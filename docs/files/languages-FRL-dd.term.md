# File _languages/FRL/dd.term_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/FRL/dd.term)**
```
[ (family,[ (objectId,integer,[notNull,primaryKey]), (name,varchar(42),[notNull])]), (person,[ (objectId,integer,[notNull,primaryKey]), (firstName,varchar(42),[notNull]), (closestFriend,integer,[foreignKey(person,objectId)])]), (family_members,[ (familyId,integer,[notNull,foreignKey(family,objectId)]), (members,integer,[notNull,foreignKey(person,objectId)])]), (person_emailAddresses,[ (personId,integer,[notNull,foreignKey(person,objectId)]), (emailAddresses,varchar(42),[notNull])])].
```