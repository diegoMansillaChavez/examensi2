# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181003002332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.integer "numero"
    t.string "nivel"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "grado"
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "grado"
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fathers", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "celular"
    t.integer "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infraccions", force: :cascade do |t|
    t.string "fecha"
    t.integer "infractor_id"
    t.integer "policia_id"
    t.integer "tipo_infraccion_id"
    t.integer "vehiculo_id"
    t.integer "monto_infracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infractors", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "numero_de_licencia"
    t.string "fecha_de_emision"
    t.string "fecha_de_vencimiento"
    t.string "sexo"
    t.string "nacionalidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infrastructures", force: :cascade do |t|
    t.string "nombre"
    t.string "detalle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inscripcions", force: :cascade do |t|
    t.string "fecha"
    t.integer "estudiante_id"
    t.integer "curso_id"
    t.integer "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.text "description"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lugar_de_trabajos", force: :cascade do |t|
    t.string "zona"
    t.float "latitud"
    t.float "longitud"
    t.bigint "empleado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "direccion"
    t.string "descripcion"
    t.index ["empleado_id"], name: "index_lugar_de_trabajos_on_empleado_id"
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.string "materia"
    t.string "fecha_destino"
    t.string "body"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_notes_on_student_id"
    t.index ["teacher_id"], name: "index_notes_on_teacher_id"
  end

  create_table "padres", force: :cascade do |t|
    t.string "name"
    t.string "apellido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paralelos", force: :cascade do |t|
    t.string "letra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "policia", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rastreos", force: :cascade do |t|
    t.float "latitud"
    t.float "longitud"
    t.string "image"
    t.bigint "empleado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fecha"
    t.index ["empleado_id"], name: "index_rastreos_on_empleado_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "father_id"
    t.string "nombre"
    t.string "apellido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_students_on_course_id"
    t.index ["father_id"], name: "index_students_on_father_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "celular"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_infraccions", force: :cascade do |t|
    t.string "nombre"
    t.integer "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "type_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehiculos", force: :cascade do |t|
    t.string "placa"
    t.string "marca"
    t.string "modelo"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "teachers"
  add_foreign_key "lugar_de_trabajos", "empleados"
  add_foreign_key "notes", "students"
  add_foreign_key "notes", "teachers"
  add_foreign_key "rastreos", "empleados"
  add_foreign_key "students", "courses"
  add_foreign_key "students", "fathers"
end
