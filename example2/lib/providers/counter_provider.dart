import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/counter_model.dart';

final counterProvider = StateNotifierProvider<Counter, int?>(
  (ref) => Counter(),
);
