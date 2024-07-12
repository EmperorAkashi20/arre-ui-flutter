# arre_frontend_flutter

Arré Voice flutter app

## Getting Started


## Note:
There's nothing right or wrong mentioned here. It's just that as a team we need to follow same rules for better readability, development & debugging.

## Git management
- Two main branches
    + **development**: It's the default branch, developers should raise PR against this branch.
    + **stable**: After development (and ofcourse testing) is done, `development` is merged into `stable` and released to the production.
- Branch naming conventions
    + **prefix**: Branch name should start with 2 letters and hiphen(`-`), which indicates the author identity. For eg, Shashikant Durge - `sd-`
    + **suffix**: It can be `Feature` or `Fix`. Eg, `sd-oboardingFeature`, `sd-notificationFix`

## Code practices
- Use `log` instead of `print`. 
- Include variable within string instead of adding it separately.
    + 👍🏼 Do `log("variable is included within this $xyz");` 
    + 👎🏼 Don't `log("variable is not included within this " + xyz);`
- Avoid long functions.
- Naming conventions:
    + class `ArreAnalytics`
    + mixin `RouteAware`
    + methods `doSomething`
    + var `userId`
    + const `USER_CLICKED_ON_SOME_BUTTON`
    + enum `MessageProvider`
    + enum values `sms`, `whatsapp`, `camelCase`
    + file name `home_screen.dart`
    + Provider class: ends with Provider. Eg, `LoginProvider`. file name `login_provider.dart`
    + Page/Screen class: ends with Screen/Class. Eg, `HomeScreen` | `HomePage`. file name `home_screen.dart`
    + Boolean variable: starts with is, was, can, has. Eg, `isFollowing`
    + Common Widgets: Widgets used in multiple screens. ends with Widget
