

import 'package:flutter_whatsapp_cloan/domain/entities/contact_entity.dart';

abstract class GetDeviceNumberRepository{
  Future<List<ContactEntity>> getDeviceNumbers();
}