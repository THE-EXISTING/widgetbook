/// Annotates a builder function which is used to create the WidgetbookWidget
/// and [WidgetbookUseCase] for the Widgetbook
class WidgetbookUseCase {
  /// Creates a new annotation with [name] and [type].
  ///
  /// The [name] defines how the [WidgetbookUseCase] will show in the navigation
  /// area of the widgetbook.
  ///
  /// The [type] defines the Widget rendered with the UseCase. Therefore, it is
  /// used to create the WidgetElement of the Widgetbook
  const WidgetbookUseCase({
    required this.name,
    required this.type,
  });

  /// The name of the UseCase.
  final String name;

  /// The type of the Widget shown in the UseCase.
  /// It is used to generate the WidgetbookWidget of the Widgetbook.
  final Type type;
}
