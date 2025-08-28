// Для точности форматирования написал с нуля класс
class NumberFormatter {
  static String formatWithCommas(double number, {int decimalPlaces = 2}) {
    final roundedNumber = double.parse(number.toStringAsFixed(decimalPlaces));

    final parts = roundedNumber.toString().split('.');
    final integerPart = parts[0];
    final decimalPart = parts.length > 1 ? parts[1] : '';

    final formattedInteger = _addCommasToInteger(integerPart);

    if (decimalPart.isNotEmpty) {
      return '$formattedInteger.$decimalPart';
    } else {
      return formattedInteger;
    }
  }

  static String _addCommasToInteger(String integerString) {
    if (integerString.length <= 3) {
      return integerString;
    }

    final buffer = StringBuffer();
    final reversed = integerString.split('').reversed.toList();

    for (int i = 0; i < reversed.length; i++) {
      if (i > 0 && i % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(reversed[i]);
    }

    return buffer.toString().split('').reversed.join('');
  }

  static String formatPrice(double price, {int decimalPlaces = 2}) {
    return '\$${formatWithCommas(price, decimalPlaces: decimalPlaces)}';
  }
}
