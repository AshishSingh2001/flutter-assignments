/// Exception thrown when getEmployeeList Request fails.
class EmployeeListRequestFailure implements Exception {}

/// Exception thrown when the provided employee is not found.
class EmployeeNotFoundFailure implements Exception {}

/// Exception thrown when the list of employees has ended.
class NoMoreEmployeeFailure implements Exception {}

/// Exception thrown when getCheckin Request fails.
class CheckinRequestFailure implements Exception {}

/// Exception thrown when checkin for provided employee or id is not found.
class CheckinNotFoundFailure implements Exception {}
