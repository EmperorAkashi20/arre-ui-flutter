part of playlist;

class _PlaylistCUBody extends ConsumerWidget {
  final String title, actionBtnText;
  final GPlaylist? playlist;

  const _PlaylistCUBody({
    Key? key,
    required this.playlist,
    required this.title,
    required this.actionBtnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlistCUPvd = ref.watch(playlistCuProvider(playlist));
    return SafeArea(
      child: Align(
        alignment: Alignment(0, -0.2),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30),
              _PlaylistCoverImageField(playlist: playlist),
              SizedBox(height: 30),
              _PlaylistTitleEditingField(playlist: playlist),
              SizedBox(height: 24),
              _PlaylistPrivacySwitchField(playlist: playlist),
              SizedBox(height: 42),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 45,
                    width: 120,
                    child: FilledFlatButton(
                      onPressed: () {
                        playlistCUPvd.submit(
                          onSuccess: ((playlist, message) {
                            Navigator.of(context).pop(playlist);
                            showInfoSnackBar(message.toString());
                            ref.invalidate(
                                userPlaylistProvider(arrePref.userId!));
                            ref.invalidate(
                                playlistDetailsProvider(playlist.playlistId));
                          }),
                          onError: ((err) {
                            showErrorSnackBar(err);
                          }),
                        );
                      },
                      child: playlistCUPvd.isSubmitting
                          ? ACommonLoader.dancingBars(size: 24)
                          : Text(
                              actionBtnText,
                              style: ATextStyles.user16Regular(),
                            ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: ATextStyles.user16Regular(
                        AColors.tealPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PlaylistCoverImageField extends ConsumerWidget {
  final GPlaylist? playlist;

  const _PlaylistCoverImageField({
    required this.playlist,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlistCUPvd = ref.watch(playlistCuProvider(playlist));
    Widget child;
    if (playlistCUPvd.imageFile != null) {
      child = Image.file(
        playlistCUPvd.imageFile!,
        fit: BoxFit.cover,
      );
    } else if (playlistCUPvd.playlist?.coverImage != null) {
      child = ArreNetworkImage.mediaId(
        playlistCUPvd.playlist!.coverImage!,
        fit: BoxFit.cover,
      );
    } else {
      child = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              ArreIconsV2.image_outline,
              color: AColors.tealPrimary,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Add Cover',
            style: TextStyle(
              color: AColors.white,
            ),
          ),
        ],
      );
    }
    return GestureDetector(
      onTap: () {
        playlistCUPvd.pickCoverImage(onError: showErrorSnackBar);
      },
      child: Container(
        height: 140,
        width: 140,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: playlistCUPvd.playlist?.coverImage == null
              ? AColors.BgLight
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}

class _PlaylistTitleEditingField extends ConsumerWidget {
  final GPlaylist? playlist;

  const _PlaylistTitleEditingField({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  static const int maxCharacterLimit = 18;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlistCUPvd = ref.watch(playlistCuProvider(playlist));

    return TextFormField(
      controller: playlistCUPvd.titleEditingCtrl,
      autocorrect: false,
      maxLines: 1,
      maxLength: maxCharacterLimit,
      style: TextStyle(color: AColors.greyLight),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10, 16, 6, 0),
        fillColor: Color(0XFF232C36).withOpacity(0.5),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Color(0XFFDBF2EF).withOpacity(0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Color(0XFFDBF2EF),
          ),
        ),
        counter: ValueListenableBuilder<TextEditingValue>(
          valueListenable: playlistCUPvd.titleEditingCtrl,
          builder: (context, value, _) {
            return Text(
              "${value.text.characters.length}/$maxCharacterLimit",
              style:
                  ATextStyles.user12Regular(AColors.greyLight.withOpacity(0.4)),
            );
          },
        ),
        border: InputBorder.none,
        hintText: "Name your playlist",
        hintStyle:
            ATextStyles.user16Regular(AColors.greyLight.withOpacity(0.4)),
      ),
    );
  }
}

class _PlaylistPrivacySwitchField extends ConsumerWidget {
  final GPlaylist? playlist;

  const _PlaylistPrivacySwitchField({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlistCUPvd = ref.watch(playlistCuProvider(playlist));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            'Keep it private?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        FlutterSwitch(
          width: 50,
          height: 25,
          toggleSize: 20,
          value: playlistCUPvd.isPrivate,
          activeColor: AColors.tealPrimary,
          onToggle: (val) {
            playlistCUPvd.changePrivacy();
          },
        ),
      ],
    );
  }
}
