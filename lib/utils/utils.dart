String extractHourMinute(String dateTimeStr) {
  try {
    return dateTimeStr.substring(11, 16);
  } catch (e) {
    return 'Invalid date format';
  }
}