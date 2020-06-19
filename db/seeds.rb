Project.create({title: 'Семья'})
Project.create({title: 'Работа'})
Project.create({title: 'Прочее'})

puts '3 Projects created'

Todo.create({project_id: 1, text: 'Купить молоко', complete: false})
Todo.create({project_id: 1, text: 'Заменить масло в двигателе до 23 апреля', complete: false})
Todo.create({project_id: 1, text: 'Отправить письмо бабушке', complete: true})
Todo.create({project_id: 1, text: 'Заплатить за квартиру', complete: false})
Todo.create({project_id: 1, text: 'Забрать обувь из ремонта', complete: false})

Todo.create({project_id: 2, text: 'Позвонить заказчику', complete: true})
Todo.create({project_id: 2, text: 'Отправить документы', complete: true})
Todo.create({project_id: 2, text: 'Заполнить отчет', complete: false})

Todo.create({project_id: 3, text: 'Позвонить другу', complete: false})
Todo.create({project_id: 3, text: 'Подготовиться к поездке', complete: false})

puts '10 Todos created'