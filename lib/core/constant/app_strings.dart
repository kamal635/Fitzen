/// Contains all the static text strings used across the app.
abstract class AppStrings {
  //============================= Onboarding UI ================================

  /// Title for the onboarding screen about building strength.
  static const String buildStrengthTitle = 'Build Strength and Stay Motivated';

  /// Title for the onboarding screen about healthy eating.
  static const String healthyFoodTitle = 'Eat Smart & Feel Better';

  /// Title for the onboarding screen about starting fitness.
  static const String startFitnessTitle = 'Start Your Fitness Journey';

  /// Subtitle with tips and meal suggestions for a healthy diet.
  static const String healthyFoodSubtitle =
      '''Get tailored meal suggestions and healthy tips that complement your workouts.''';

  /// Subtitle encouraging progress tracking and goal setting.
  static const String buildStrengthSubtitle = '''
Track your progress, crush your goals, and stay committed with professional guidance.''';

  /// Subtitle promoting personalized workout routines.
  static const String startFitnessSubtitle = '''
Discover personalized workouts that fit your body and goals. Transform your routine one step at a time.''';

  //============================= Auth UI================================
  /// Label for a back navigation button.
  static const String back = 'Back';

  /// Label for a next navigation button.
  static const String next = 'Next';

  /// Label for a done/completion button.
  static const String done = 'Done';

  /// Label for the login action/button.
  static const String login = 'Login';

  /// Label for selecting a trainer role.
  static const String trainer = 'Trainer';

  /// Label for selecting a trainee role.
  static const String trainee = 'Trainee';

  /// Label for the register/signup action/button.
  static const String register = 'Register';

  /// Label for navigating back to the login screen.
  static const String backLogin = 'Back to login';

  /// Label for sending a password reset link.
  static const String resetLink = 'Send Reset Link';

  /// Label for the reset password action/button.
  static const String resetPassword = 'Reset Password';

  /// Label to open the default email app.
  static const String openEmail = 'Open Email App';

  /// Label for the email address input field.
  static const String email = 'Email Address';

  /// Label for the new password input field.
  static const String newPassword = 'New Password';

  /// Label for confirming the new password.
  static const String confirmNewPassword = 'Confirm New Password';

  /// Placeholder to enter a new password.
  static const String enterNewPassword = 'Enter your new password';

  /// Placeholder to confirm the new password.
  static const String enterConfirmNewPassword = 'Confirm your new password';

  /// Placeholder to enter the email address.
  static const String enteEmail = 'Enter your email';

  /// Label for the password input field.
  static const String password = 'Password';

  /// Placeholder to create a new password.
  static const String createPassword = 'Create a password';

  /// Label for the confirm password field.
  static const String confirmPassword = 'Confirm Password';

  /// Placeholder to confirm the entered password.
  static const String confirmYourPassword = 'Confirm your password';

  /// Label for the first name input field.
  static const String firstName = 'First Name';

  /// Placeholder to enter the user's first name.
  static const String enterFirstName = 'Enter your first name';

  /// Label for the last name input field.
  static const String lastName = 'Last Name';

  /// Placeholder to enter the user's last name.
  static const String enteLastName = 'Enter your last name';

  /// Label for the phone number input field.
  static const String phoneNumber = 'Phone Number';

  /// Placeholder to enter the user's phone number.
  static const String enterPhoneNumber = 'Enter your phone number';

  /// Label for the years of experience input.
  static const String yearsExperience = 'Years of Experience';

  /// Example input for years of experience.
  static const String exampleExperience = 'e.g., 5';

  /// Label for the specializations input.
  static const String specializations = 'Specializations';

  /// Example input for types of specializations.
  static const String exampleSpecializations =
      'e.g., Weightlifting, Yoga, Cardio';

  /// Label for the certification name input field.
  static const String certificationName = 'Certification Name';

  /// Label for the button to upload a certification.
  static const String uploadCertification = 'Upload Certification';

  /// Example text for certification input.
  static const String exampleCertification = 'e.g., Certified Personal Trainer';

  /// Label for uploading a general document.
  static const String uploadDocument = 'Upload Document';

  /// Text for background check consent checkbox.
  static const String argreeTerms = 'I consent to a background check.';

  /// Message shown when the application is under review.
  static const String underReview =
      "Thanks for registering. We'll notify you once you're approved.";

  /// Label for the "Forgot Password?" link.
  static const String forgotPassword = 'Forgot Password?';

  /// Title shown on the forgot password screen.
  static const String forgotPasswordTitle = 'Forgot your password?';

  /// Subtitle with instructions to reset the password.
  static const String forgotPasswordSubTitle =
      'Enter your email to receive a password reset link.';

  /// Title for the reset password screen.
  static const String resetPasswordTitle = 'Reset Password';

  /// Subtitle with instructions for creating a new password.
  static const String resetPasswordSubTitle =
      'Please enter a new password to regain access to your account.';

  /// Text shown when the user doesn't have an account.
  static const String dontHaveAccount = 'Do not have an account? Please';

  /// Text shown when the user already has an account.
  static const String haveAccount = 'Already have an account?';

  /// Title shown after reset link is sent to email.
  static const String openEmailTitle =
      'Check your email to reset your password.';

  /// Subtitle with instructions after sending the reset email.
  static const String openEmailSubTitle =
      'Password reset link sent. Check your inbox for instructions.';

  /// Title shown when choosing between trainer or trainee roles.
  static const String titleWhoAreYou = 'Welcome! Choose \n Your Role';

  /// Subtitle for users who want to offer training services.
  static const String subtitleTrainer = 'I want to offer training services.';

  /// Subtitle for users looking to find a trainer.
  static const String subtitleTrainee = 'I want to find a trainer.';

  /// Title for the trainer registration flow.
  static const String trainerRegistrationTitle = 'Trainer Registration';

  /// Title for the trainee registration flow.
  static const String traineeRegistrationTitle = 'Trainee Registration';

  /// Title for step 1: entering basic information.
  static const String step1Title = 'Basic Information';

  /// Title for step 2: entering contact details and experience.
  static const String step2Title = 'Contact & Experience';

  /// Title for step 3: uploading documents and verification.
  static const String step3Title = 'Verification & Documents';

  /// Title for step 4: confirming registration completion.
  static const String step4Title = 'Registration Complete';

  /// File extension used for PDF documents.
  static const String extensionPDF = 'pdf';
}
