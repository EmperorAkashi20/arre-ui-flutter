part of my_account_settings;

void showAccountDeleteSheet(WidgetRef ref) {
  showModalBottomSheet(
    context: ref.context,
    useRootNavigator: true,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (_) {
      return _AccountDeleteSheet();
    },
  );
}

void showAccountDeactivateSheet(WidgetRef ref) {
  showModalBottomSheet(
    context: ref.context,
    useRootNavigator: true,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (_) {
      return _AccountDeactivateSheet();
    },
  );
}

void showAreYouSureSheet(WidgetRef ref) {
  FocusScope.of(ref.context).unfocus();
  showModalBottomSheet(
    context: ref.context,
    useRootNavigator: true,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return _AreYouSureSheet();
    },
  );
}

Future<void> actionOnAccount({
  required WidgetRef ref,
  required bool accountDelete,
  required void Function() onSuccess,
  required void Function(dynamic error) onError,
}) async {
  try {
    if (accountDelete) {
      ref.read(deleteAccountProvider);
    } else {
      ref.read(deactivateAccountProvider);
    }
    onSuccess();
  } catch (err, st) {
    Utils.reportError(err, st);
    onError(err);
  } finally {}
}

class _AccountDeleteSheet extends ConsumerWidget {
  const _AccountDeleteSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.transparent,
      height: 360,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 19),
                  height: 3,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: AColors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Delete Account Permanently?",
                style: TextStyle(
                  fontFamily: "Acumin Pro",
                  color: Theme.of(context).hintColor,
                  // cardDescriptionText,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15),
                    child: Text(
                      "Deleting your account will:",
                      style: TextStyle(
                        fontFamily: "Acumin Pro",
                        color: Theme.of(context).hintColor.withOpacity(0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 23),
                    child: UnorderedList([
                      "Clear all your data from Project Arre Voice and you will not be able to login again.",
                      "After 30 days of deletion, we will automatically clear all your information from the app.",
                      "You can retrieve your account if you ",
                      // contact us within 30 days
                    ]),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 33),
                      transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                      child: Row(
                        children: [
                          Text(
                            "contact app support ",
                            style: TextStyle(
                              fontFamily: "Acumin Pro",
                              color:
                                  Theme.of(context).hintColor.withOpacity(0.6),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "within 30 days",
                            style: TextStyle(
                              fontFamily: "Acumin Pro",
                              color:
                                  Theme.of(context).hintColor.withOpacity(0.6),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                Navigator.pop(context);
                showAreYouSureSheet(ref);
              },
              child: Container(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 50, right: 50),
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: AColors.red,
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                ),
                child: Text(
                  "Permanently Delete My Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Acumin Pro",
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AccountDeactivateSheet extends ConsumerWidget {
  const _AccountDeactivateSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late bool isLoading = false;

    Widget buttonLabel;

    if (isLoading) {
      buttonLabel = ACommonLoader();
    } else {
      buttonLabel = Text(
        "Temporarily Deactivate My Account",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Acumin Pro",
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      );
    }
    return Container(
      color: Colors.transparent,
      height: 330,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 19),
                  height: 3,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: AColors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Deactivate Account Temporarily ?",
                style: TextStyle(
                  fontFamily: "Acumin Pro",
                  color: Theme.of(context).hintColor,
                  // cardDescriptionText,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      "Deactivating your account will:",
                      style: TextStyle(
                        fontFamily: "Acumin Pro",
                        color: Theme.of(context).hintColor.withOpacity(0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 23),
                    child: UnorderedList([
                      "hide your profile, voicepods, likes, repods, comments.",
                      "all your DM conversations with other users will be disabled temporarily.",
                      "You can always revive all your content and activity by logging in again to the app.",
                    ]),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await actionOnAccount(
                  ref: ref,
                  accountDelete: false,
                  onSuccess: () {
                    arreAnalytics.logEvent(
                        GAEvent.DEACTIVATE_ACCOUNT_BUTTON_CLICKED);
                    Utils.logout(
                        toastMessage:
                            AppConstants.youHaveSucesslogoutTemporarily);
                  },
                  onError: (error) {
                    showErrorSnackBar(error);
                  },
                );
              },
              child: Container(
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 50, right: 50),
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: AColors.tealPrimary,
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  child: buttonLabel),
            ),
          ],
        ),
      ),
    );
  }
}

class _AreYouSureSheet extends ConsumerStatefulWidget {
  @override
  _AreYouSureSheetState createState() => _AreYouSureSheetState();
}

class _AreYouSureSheetState extends ConsumerState<_AreYouSureSheet> {
  final _textEditingController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 19),
                      height: 3,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          color: AColors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Are You Sure?",
                    style: TextStyle(
                      fontFamily: "Acumin Pro",
                      color: Theme.of(context).hintColor,
                      // cardDescriptionText,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "This action cannot be undone",
                    style: TextStyle(
                      fontFamily: "Acumin Pro",
                      color: Theme.of(context).hintColor.withOpacity(0.6),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 95,
                  height: 36,
                  child: TextField(
                    controller: _textEditingController,
                    focusNode: _focusNode,
                    cursorColor: AColors.tealPrimary,
                    style: TextStyle(color: Theme.of(context).hintColor),
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      hintText: "Type \" DELETE \" to confirm",
                      hintStyle: TextStyle(
                          color: AColors.textMedium.withOpacity(0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                      filled: true,
                      fillColor: AColors.BgLight,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              color: AColors.textLight.withOpacity(0.5),
                              width: 0.5)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AColors.textLight.withOpacity(0.5),
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {
                          if (_textEditingController.text
                                  .trim()
                                  .toUpperCase() ==
                              "DELETE") {
                            await actionOnAccount(
                              ref: ref,
                              accountDelete: true,
                              onSuccess: () {
                                arreAnalytics.logEvent(GAEvent
                                    .DELETE_ACCOUNT_BUTTON_CLICKED);
                                Utils.logout(
                                    toastMessage: AppConstants
                                        .youHaveSucesslogoutPermanentlyTwo);
                              },
                              onError: (error) {
                                showErrorSnackBar(error);
                              },
                            );
                          }
                        },
                        child: Container(
                          width: 120,
                          padding: EdgeInsets.only(top: 14, bottom: 13),
                          decoration: BoxDecoration(
                            color: AColors.red,
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                          ),
                          child: Text(
                            "Confirm",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Acumin Pro",
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Cancel",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Acumin Pro",
                            color: AColors.tealPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
