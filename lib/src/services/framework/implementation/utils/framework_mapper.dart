import '../../../../../models.dart';

class FrameworkMapper {
  static Framework prepareFrameworkCategoryAssociations(Framework framework) {
    if (framework.categories == null) {
      return framework;
    }

    framework.categories = framework.categories.asMap().entries.map((entry) {
      final category = entry.value;
      final categoryIndex = entry.key;

      if (category.terms == null) {
        return category;
      }

      category.terms = category.terms.map((term) {
        if (term.associations == null) {
          return term;
        }

        term.associations =
            term.associations.where((CategoryAssociation association) {
          return (categoryIndex >= framework.categories.length - 1) ||
              (association.category ==
                  framework.categories[categoryIndex + 1].code);
        });

        return term;
      }).toList();

      return category;
    }).toList();

    return framework;
  }
}
