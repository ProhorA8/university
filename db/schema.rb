# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_07_075621) do

  create_table "books", force: :cascade do |t|
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "book_name"
    t.string "author"
    t.index ["imageable_type", "imageable_id"], name: "index_books_on_imageable"
  end

  create_table "classrooms", force: :cascade do |t|
    t.integer "number", null: false
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "floor", null: false
    t.index ["student_id"], name: "index_classrooms_on_student_id"
    t.index ["teacher_id"], name: "index_classrooms_on_teacher_id"
  end

  create_table "classrooms_timetables", id: false, force: :cascade do |t|
    t.integer "classroom_id"
    t.integer "timetable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_classrooms_timetables_on_classroom_id"
    t.index ["timetable_id"], name: "index_classrooms_timetables_on_timetable_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.integer "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_faculties_on_student_id"
  end

  create_table "faculty_names", force: :cascade do |t|
    t.integer "faculty_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["faculty_id"], name: "index_faculty_names_on_faculty_id"
  end

  create_table "record_books", force: :cascade do |t|
    t.integer "grade"
    t.integer "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "subject"
    t.string "teacher"
  end

  create_table "students", force: :cascade do |t|
    t.string "studentname", null: false
    t.integer "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "age", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teachername", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "best_student"
    t.string "bad_student"
  end

  create_table "teachers_journals", force: :cascade do |t|
    t.integer "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_teachers_journals_on_teacher_id", unique: true
  end

  create_table "timetables", force: :cascade do |t|
    t.string "lesson"
    t.integer "student_id"
    t.integer "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_timetables_on_student_id"
    t.index ["teacher_id"], name: "index_timetables_on_teacher_id"
  end

  add_foreign_key "classrooms", "students"
  add_foreign_key "classrooms", "teachers"
  add_foreign_key "record_books", "students"
  add_foreign_key "teachers_journals", "teachers"
end
