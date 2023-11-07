---
author: Максимов Егор, Попов Павел, Лапотников Павел, Сон Артём
date: DD.MM.YY
paging: slide %d / %d
---

# Swift

**Управление сложностью кода**

- пространства имен
- модули
- пакеты
- импорт
- экспорт

---

## Пространства имен

- Пространства имен имеют:

  - Импортированные модули
  - Структура, класс, перечисление

- Внутри модуля глобальная область видимости

  - То есть можно обращаться к элементам другого файла без импортов

- В swift нельзя объявить область пространством имен (c++ namespace)

  - Одно из возможных решений: создать пустой enum и расширить его

    - Пустой enum нельзя инициализировать

```swift
enum namespace {}

extension namespace {
    static func foo() {
        print("kek")
    }
}

namespace.foo()
```

---

## Модули

- Модулем называется библиотека, фреймоворк, исполняемый файл

  - В общем, любой законченный кусок кода

- Для того, чтобы импортировать модуль _A_ в модуль _B_, его нужно добавить в зависимости _B_ внутри _Package.swift_

---

## Пакеты

- У каждого пакета/проекта такая структура

```
Project
├── Sources
│     ├── Module
│     │    ├── Bim.swift
│     │    ├── Bam.swift
│     │    └── Bum.swift
│     │
│     └── OtherModule
│          ├── Kek.swift
│          └── Shmek.swift
│
└── Package.swift
```

---

## Package.swift

- Файл описывающий сборку проекта
- В нем указываются зависимости, необходимые для компиляции
- target: результаты компиляции отдельных кусков кода, по сути это и есть
  модуль, тут разница больше в контексте
- products: конечный результат сборки пакета, доступный извне

```swift
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PackageName",
    products: [ .executable(name: "ExecutableName", targets: ["ModuleName"]) ],
    dependencies: [ .package( name: "DependencyName", path: "./DependencyName") ],
    targets: [ .target( name: "ModuleName", dependencies: [ .byName(name: "DependencyName") ]) ]
)

```

---

**Спасибо за внимание!**
