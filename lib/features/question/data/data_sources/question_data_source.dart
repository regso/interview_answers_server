class QuestionDataSource {
  List<Map<String, dynamic>> findQuestions({required int subjectId}) {
    if (subjectId != 1) {
      return [];
    }

    return [
      {
        'id': 1,
        'subjectId': 1,
        'title': 'Stateless и Stateful',
        'question': 'В чем отличие Stateless и Stateful виджета?',
        'answer':
            'StatelessWidget - это виджет, который не имеет состояния, в процессе работы приложения не изменяет своих свойств. Они могут изменяться лишь посредством внешних событий, которые возникают в родительских виджетах. '
                'StatefulWidget - это виджет, который хранит состояние, в процессе работы приложения он может его изменять динамически с помощью setState().',
        'difficulty': 1,
      },
      {
        'id': 2,
        'subjectId': 1,
        'title': 'InheritedWidget',
        'question': 'Что такое InheritedWidget?',
        'answer': 'InheritedWidget — это виджет, который предоставляет своим потомкам возможность взаимодействовать с данными, хранящимися в нём. Решает проблему с передачей данных через конструкторы. Может уведомлять виджетов внизу по дереву об изменениях в собственных данных, тем самым провоцируя их перерисовку. '
            'Для получения Inherited виджета необходимо вызвать context.dependOnInheritedWidgetOfExactType<T extends InheritedWidget>() в didChangeDependencies(). '
            'Сложность у операции получения InheritedWidget - O(1). Такая скорость достигается за счёт того, что Inherited виджеты хранятся в виде мапы в Element-е',
        'difficulty': 1,
      },
      {
        'id': 3,
        'subjectId': 1,
        'title': 'Widget',
        'question': 'Что такое Widget?',
        'answer':
            'Widget - это иммутабельное описание части пользовательского интерфейса. Виджет связан с элементом, который управляет рендерингом. Виджеты образуют сруктуру, а не дерево.',
        'difficulty': 1,
      },
      {
        'id': 4,
        'subjectId': 1,
        'title': 'Element',
        'question': 'Что такое Element?',
        'answer':
            'Element - это мутабельное представление виджета в определенном месте дерева. Управляют жизненым циклом, связывают виджеты и объекты рендеринга.',
        'difficulty': 1,
      },
      {
        'id': 5,
        'subjectId': 1,
        'title': 'RenderObject',
        'question': 'Что такое RenderObject?',
        'answer':
            'RenderObject - это мутабельный объект дерева визуализации. У него есть родительский объект, а также поле с данными, которое родительский объект использует для хранения специфичной информации, касающейся самого этого объекта, например, его позицию. Данный объект отвечает за отрисовку, учёт размеров и ограничений, прослушивание и обработку нажатий. При необходимости перерисовки помечается как dirty. Перерисовывается, используя свой метод layer.',
        'difficulty': 1,
      },
      {
        'id': 6,
        'subjectId': 1,
        'title': 'GlobalKeys',
        'question': 'Что такое GlobalKeys?',
        'answer':
            'GlobalKeys - это ключи, которые предоставляют доступ к виджетам. Для виджетов с отслеживанием состояния глобальные ключи также предоставляют доступ к состоянию. Позволяют виджетам менять родителей в любом месте приложения без потери состояния. Должны быть уникальны для всего приложения.',
        'difficulty': 1,
      },
      {
        'id': 7,
        'subjectId': 1,
        'title': 'CustomPaint',
        'question': 'Что такое CustomPaint?',
        'answer':
            'CustomPaint - это класс, который создает «холст» для рисования. В методе paint в качестве аргументов поступает canvas, который позволяет рисовать различные фигуры.',
        'difficulty': 1,
      },
      {
        'id': 8,
        'subjectId': 1,
        'title': 'Расчёт макета',
        'question': 'Как выполняется расчет макета?',
        'answer':
            'Ограничения спускаются вниз по дереву, от родителей к детям. Размеры идут вверх по дереву от детей к родителям. Родители устанавливают положение детей.',
        'difficulty': 1,
      },
      {
        'id': 9,
        'subjectId': 1,
        'title': 'BuildOwner',
        'question': 'Что такое BuildOwner?',
        'answer':
            'BuildOwner — менеджер сборки и обновления дерева элементов. Он активно участвует в двух фазах — сборки и завершения сборки. Поскольку BuildOwner управляет процессом сборки дерева, в нем хранятся списки неактивных элементов и списки элементов, нуждающихся в обновлении.',
        'difficulty': 1,
      },
      {
        'id': 10,
        'subjectId': 1,
        'title': 'Garbage Collector',
        'question': 'Как работает Garbage Collector?',
        'answer':
            'Garbage Collector - это алгоритм, наблюдает за ссылками и очищает память с целью предотвращения её переполнения. '
                'В процессе сборки мусора слой Dart Framework создает канал взаимодействия со слоем Flutter Engine, посредством которого узнает о моментах простоя приложения и отсутствия пользовательского взаимодействия. В эти моменты Dart Framework запускает процесс оптимизации памяти, что позволяет сократить влияния на пользовательский опыт и стабильность приложения.',
        'difficulty': 1,
      },
    ];
  }
}
