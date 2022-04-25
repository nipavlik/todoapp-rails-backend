# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Project.create([
  { title: 'Семья'},
  { title: 'Работа'},
  { title: 'Прочее' }
])

Project.find_by(title: 'Семья').todos.create([
  { text: 'Купить молоко' },
  { text: 'Заменить масло в двигателе до 23 апреля' },
  { text: 'Отправить письмо бабушке', isComplete: true },
  { text: 'Заплатить за квартиру' },
  { text: 'Забрать обувь из ремонта' }
])

Project.find_by(title: 'Работа').todos.create([
  { text: 'Позвонить заказчику', isComplete: true },
  { text: 'Отправить документы', isComplete: true },
  { text: 'Заполнить отчет' },
])

Project.find_by(title: 'Прочее').todos.create([
  { text: 'Позвонить другу' },
  { text: 'Подготовиться к поездке' }
])