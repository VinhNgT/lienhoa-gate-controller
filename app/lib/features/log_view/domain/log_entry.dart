sealed class LogEntry {
  LogEntry({
    required this.id,
    required this.message,
  });

  final int id;
  final String message;
}

enum GateLogType {
  open,
  close,
}

class GateLogEntry extends LogEntry {
  GateLogEntry({required super.id, required super.message, required this.type});
  final GateLogType type;
}

class CameraLogEntry extends LogEntry {
  CameraLogEntry({required super.id, required super.message});
}

class AlprLogEntry extends LogEntry {
  AlprLogEntry({required super.id, required super.message});
}
