import 'package:riverpod/riverpod.dart';
import 'package:whatsapp_clone_flutter/feature/select_contact/repository/select_contact_repository.dart';

final getContactsprovider = FutureProvider((ref) {
  final selectContactRepository = ref.watch(selectContactRepositoryProvider);
  return selectContactRepository.getContact();
});
