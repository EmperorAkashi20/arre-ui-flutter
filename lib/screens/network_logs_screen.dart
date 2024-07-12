import 'dart:convert';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/network_log.dart';
import 'package:arre_frontend_flutter/providers/network_logs_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';

class NetworkLogsScreen extends StatefulWidget with ArreScreen {
  const NetworkLogsScreen({Key? key}) : super(key: key);

  @override
  State<NetworkLogsScreen> createState() => _NetworkLogsScreenState();

  @override
  Uri? get uri => Uri.parse("/network_logs_screen");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/network_logs_screen") {
      return AGlobalPage(child: NetworkLogsScreen());
    }
    return null;
  }

  @override
  String get screenName => "network_logs_screen";
}

class _NetworkLogsScreenState extends State<NetworkLogsScreen> {
  bool isRequestsSelected = true, isResponseSelected = true;
  late Stream<List<NetworkLog>> logStream;

  @override
  void initState() {
    logStream = NetworkLogsProvider.instance.logsStream;
    isRequestsSelected =
        arrePref.getBool(PrefKey.REQUESTS_SELECTED_NL_DEV) ?? true;
    isResponseSelected =
        arrePref.getBool(PrefKey.RESPONSE_SELECTED_NL_DEV) ?? true;
    super.initState();
  }

  void onRequestSelected(bool isSelected) {
    setState(() {
      isRequestsSelected = isSelected;
      arrePref.setBool(PrefKey.REQUESTS_SELECTED_NL_DEV, isSelected);
    });
  }

  void onResponseSelected(bool isSelected) {
    setState(() {
      isResponseSelected = isSelected;
      arrePref.setBool(PrefKey.RESPONSE_SELECTED_NL_DEV, isSelected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Network logs"), actions: [
        PopupMenuButton(
          itemBuilder: (_) {
            return [
              PopupMenuItem(
                child: Text("Clear"),
                value: "clear",
              )
            ];
          },
          onSelected: (value) {
            if (value == "clear") {
              NetworkLogsProvider.instance.clear();
            }
          },
        )
      ]),
      body: Column(
        children: [
          SizedBox(
            height: 56,
            width: double.maxFinite,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FilterChip(
                    label: Text("Requests"),
                    visualDensity: VisualDensity.compact,
                    onSelected: onRequestSelected,
                    selected: isRequestsSelected,
                  ),
                  SizedBox(width: 6),
                  FilterChip(
                    label: Text("Responses"),
                    visualDensity: VisualDensity.compact,
                    onSelected: onResponseSelected,
                    selected: isResponseSelected,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<List<NetworkLog>>(
              stream: logStream,
              builder: (BuildContext context,
                  AsyncSnapshot<List<NetworkLog>> snapshot) {
                final data = snapshot.data ?? [];
                return ListView.builder(
                  itemBuilder: (_, i) {
                    if (data[i].logType == NetworkLogType.sessionDivider) {
                      return Container(
                        color: AColors.tealPrimary,
                        height: 24,
                        width: double.maxFinite,
                      );
                    }

                    if ((data[i].logType.isRequest == true &&
                            !isRequestsSelected) ||
                        (data[i].logType.isResponse == true &&
                            !isResponseSelected)) {
                      return SizedBox();
                    }

                    return _GraphQL(
                      log: data[i],
                      key: ValueKey(data[i]),
                    );
                  },
                  itemCount: data.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _GraphQL extends StatefulWidget {
  final NetworkLog log;

  const _GraphQL({Key? key, required this.log}) : super(key: key);

  @override
  State<_GraphQL> createState() => _GraphQLState();
}

class _GraphQLState extends State<_GraphQL> {
  bool hasError = false;

  @override
  void initState() {
    super.initState();
    hasError = widget.log.hasError();
  }

  @override
  Widget build(BuildContext context) {
    Color color;
    if (widget.log.isRequest) {
      color = Colors.grey;
    } else if (hasError) {
      color = AColors.red;
    } else {
      color = Colors.greenAccent;
    }
    return ExpansionTile(
      title: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: widget.log.name,
              style: TextStyle(fontSize: 14),
            ),
            TextSpan(
              text: "   ",
              style: TextStyle(fontSize: 10),
            ),
            TextSpan(
              text: "(${widget.log.operationType})",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      leading: Icon(
        ArreIconsV2.lens,
        size: 20,
        color: color,
      ),
      children: [
        Row(
          children: [
            SizedBox(width: 12),
            Text("Request"),
            Spacer(),
            IconButton(
              iconSize: 20,
              onPressed: () {
                Utils.copyToClipboard(widget.log.request);
              },
              icon: Icon(ArreIconsV2.drafts_outline),
            ),
          ],
        ),
        Container(
          color: Colors.black54,
          width: double.maxFinite,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: SelectableText(widget.log.request),
        ),
        if (widget.log.variables != null) ...[
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(width: 12),
              Text("Request body"),
              Spacer(),
              IconButton(
                iconSize: 20,
                onPressed: () {
                  Utils.copyToClipboard(
                    JsonEncoder.withIndent(" ")
                        .convert(jsonDecode(widget.log.variables!)),
                  );
                },
                icon: Icon(ArreIconsV2.drafts_outline),
              ),
            ],
          ),
          Container(
            color: Colors.black54,
            width: double.maxFinite,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: SelectableText(JsonEncoder.withIndent(" ")
                .convert(jsonDecode(widget.log.variables!))),
          ),
        ],
        if (widget.log.encodedResponse != null) ...[
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(width: 12),
              Text("Response"),
              Spacer(),
              IconButton(
                iconSize: 20,
                onPressed: () {
                  Utils.copyToClipboard(
                    JsonEncoder.withIndent(" ")
                        .convert(jsonDecode(widget.log.encodedResponse!)),
                  );
                },
                icon: Icon(ArreIconsV2.drafts_outline),
              ),
            ],
          ),
          Container(
            width: double.maxFinite,
            color: Colors.black87,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: SelectableText(
              JsonEncoder.withIndent(" ").convert(
                jsonDecode(widget.log.encodedResponse!),
              ),
            ),
          )
        ],
        if (widget.log.graphqlErrors != null) ...[
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(width: 12),
              Text("Graphql Errors"),
              Spacer(),
              IconButton(
                iconSize: 20,
                onPressed: () {
                  Utils.copyToClipboard(
                    JsonEncoder.withIndent(" ")
                        .convert(widget.log.graphqlErrors!),
                  );
                },
                icon: Icon(ArreIconsV2.drafts_outline),
              ),
            ],
          ),
          Container(
            width: double.maxFinite,
            color: Colors.black87,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: SelectableText(
              JsonEncoder.withIndent(" ").convert(widget.log.graphqlErrors!),
            ),
          )
        ],
        if (widget.log.error != null) ...[
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(width: 12),
              Text("Errors"),
              Spacer(),
              IconButton(
                iconSize: 20,
                onPressed: () {
                  Utils.copyToClipboard(widget.log.error!);
                },
                icon: Icon(ArreIconsV2.drafts_outline),
              ),
            ],
          ),
          Container(
            width: double.maxFinite,
            color: Colors.black87,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: SelectableText(widget.log.error!),
          )
        ],
      ],
    );
  }
}
