/// Describes how the fire date (date used to schedule a notification) of the
/// `UILocalNotification` on iOS is interpreted.
///
/// This is needed as time zone support in the deprecated UILocalNotification
/// APIs is limited. See official docs at
/// https://developer.apple.com/documentation/uikit/uilocalnotification/1616659-timezone
/// for more details.
enum UILocalNotificationDateInterpretation {
  /// The date is interpreted as absolute GMT time.
  absoluteTime,

  /// The date is interpreted as a wall-clock time.
  wallClockTime
}

/// Indicate the importance and delivery timing of a notification.
///
/// See official docs at
/// https://developer.apple.com/documentation/usernotifications/unnotificationinterruptionlevel
/// for more details.
enum InterruptionLevel {
  /// The system presents the notification immediately, lights up the screen,
  /// and can play a sound.
  active,

  /// The system presents the notification immediately, lights up the screen,
  /// and bypasses the mute switch to play a sound.
  critical,

  /// The system adds the notification to the notification list without
  /// lighting up the screen or playing a sound.
  passive,

  /// The system presents the notification immediately, lights up the screen,
  /// and can play a sound, but won’t break through system notification controls.
  timeSensitive
}
