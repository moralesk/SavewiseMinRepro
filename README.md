# Minimal Reproduction – Complete Profile Details Prompt on Sign in with Apple

This repository contains a minimal reproduction of an issue where integrating the SDK causes **Sign in with Apple** to unnecessarily prompt users to complete their profile by entering their full name.

## Steps to Reproduce

1. Clone this repository and open the project in Xcode.
2. Run the app on an iOS simulator or device.
3. On the launch screen, tap **Sign in**.
4. Choose **Continue with Apple** when prompted.
5. Complete the native Apple Sign In alert with a valid production or sandbox Apple ID. This Apple ID should have been previously created with an associated First and Last name.
6. Observe that the system displays a **Profile Details** screen with text fields for the user to enter their **First name** and **Last name**, even though the user’s Apple ID should already have a name associated with it.

## Expected Behavior

* The **Sign in with Apple** flow should complete without requiring the user to manually enter their full name.

## Actual Behavior

* The user is prompted to enter their full name before continuing.

## Related App Store Review Rejection Reason

### **Guideline 4.0 - Design**

Your app offers Sign in with Apple as a login option but does not follow the design and user experience requirements for Sign in with Apple. Specifically:

- Your app requires users to provide their name after using Sign in with Apple. This information is already provided by the [Authentication Services framework](https://developer.apple.com/documentation/authenticationservices). 

These requirements provide the consistent experience users expect when using Sign In with Apple to authenticate or log in to an account.

**Next Steps**

Please revise the Sign in with Apple experience in your app to address the issues we identified above. 

**Resources**

- To learn more about App Store design requirements, see [App Review Guideline 4 - Design](https://developer.apple.com/app-store/review/guidelines/#design). 
- For an overview of design and formatting recommendations for Sign in with Apple, review the [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/sign-in-with-apple).

## Notes

* The issue occurs immediately after integrating the Clerk SDK and following the [iOS Quickstart](https://clerk.com/docs/ios/getting-started/quickstart) guide.
