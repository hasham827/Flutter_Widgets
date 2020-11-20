import 'package:flutter/material.dart';
import 'package:widgets_demo/examples/list_view/contactlist/contact_list_item.dart';
import 'package:widgets_demo/examples/list_view/contactlist/modal/contact.dart';

class ContactsList extends StatelessWidget {
  final List<ContactModal> _contactModal;

  ContactsList(this._contactModal);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
    );
  }

  List<ContactListItem> _buildContactsList() {
    return _contactModal
        .map((contact) => ContactListItem(contact))
        .toList();
  }
}
