#pragma once

#include <QAbstractListModel>
#include <vector>

struct ContactData;

class ContactsModel : public QAbstractListModel
{
    Q_OBJECT

public:
    ContactsModel();

private:
    std::vector<ContactData> m_data;

};

