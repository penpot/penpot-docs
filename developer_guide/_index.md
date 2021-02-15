---
layout: layouts/developer_guide.njk
eleventyNavigation:
  key: Developer guide
  order: 3
---

# Developer guide

(DEV) Lorem ipsum dolor sit amet.

@startuml C4_Elements
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml

Person(personAlias, "Label", "Optional Description")
Container(containerAlias, "Label", "Technology", "Optional Description")
System(systemAlias, "Label", "Optional Description")

Rel(personAlias, containerAlias, "Label", "Optional Technology")
@enduml
