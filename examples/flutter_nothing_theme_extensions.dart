import 'package:flutter/material.dart';

@immutable
class NothingTokens extends ThemeExtension<NothingTokens> {
  const NothingTokens({
    required this.surfaceRaised,
    required this.borderSubtle,
    required this.borderVisible,
    required this.textDisplay,
    required this.textSecondary,
    required this.textDisabled,
    required this.accentSignal,
    required this.valueSuccess,
    required this.valueWarning,
    required this.dotGridColor,
    required this.technicalRadius,
    required this.cardRadius,
    required this.pillRadius,
  });

  final Color surfaceRaised;
  final Color borderSubtle;
  final Color borderVisible;
  final Color textDisplay;
  final Color textSecondary;
  final Color textDisabled;
  final Color accentSignal;
  final Color valueSuccess;
  final Color valueWarning;
  final Color dotGridColor;

  final double technicalRadius;
  final double cardRadius;
  final double pillRadius;

  @override
  NothingTokens copyWith({
    Color? surfaceRaised,
    Color? borderSubtle,
    Color? borderVisible,
    Color? textDisplay,
    Color? textSecondary,
    Color? textDisabled,
    Color? accentSignal,
    Color? valueSuccess,
    Color? valueWarning,
    Color? dotGridColor,
    double? technicalRadius,
    double? cardRadius,
    double? pillRadius,
  }) {
    return NothingTokens(
      surfaceRaised: surfaceRaised ?? this.surfaceRaised,
      borderSubtle: borderSubtle ?? this.borderSubtle,
      borderVisible: borderVisible ?? this.borderVisible,
      textDisplay: textDisplay ?? this.textDisplay,
      textSecondary: textSecondary ?? this.textSecondary,
      textDisabled: textDisabled ?? this.textDisabled,
      accentSignal: accentSignal ?? this.accentSignal,
      valueSuccess: valueSuccess ?? this.valueSuccess,
      valueWarning: valueWarning ?? this.valueWarning,
      dotGridColor: dotGridColor ?? this.dotGridColor,
      technicalRadius: technicalRadius ?? this.technicalRadius,
      cardRadius: cardRadius ?? this.cardRadius,
      pillRadius: pillRadius ?? this.pillRadius,
    );
  }

  @override
  NothingTokens lerp(ThemeExtension<NothingTokens>? other, double t) {
    if (other is! NothingTokens) return this;
    return NothingTokens(
      surfaceRaised: Color.lerp(surfaceRaised, other.surfaceRaised, t)!,
      borderSubtle: Color.lerp(borderSubtle, other.borderSubtle, t)!,
      borderVisible: Color.lerp(borderVisible, other.borderVisible, t)!,
      textDisplay: Color.lerp(textDisplay, other.textDisplay, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t)!,
      accentSignal: Color.lerp(accentSignal, other.accentSignal, t)!,
      valueSuccess: Color.lerp(valueSuccess, other.valueSuccess, t)!,
      valueWarning: Color.lerp(valueWarning, other.valueWarning, t)!,
      dotGridColor: Color.lerp(dotGridColor, other.dotGridColor, t)!,
      technicalRadius: lerpDouble(technicalRadius, other.technicalRadius, t)!,
      cardRadius: lerpDouble(cardRadius, other.cardRadius, t)!,
      pillRadius: lerpDouble(pillRadius, other.pillRadius, t)!,
    );
  }

  static NothingTokens dark() {
    return const NothingTokens(
      surfaceRaised: Color(0xFF1A1A1A),
      borderSubtle: Color(0xFF222222),
      borderVisible: Color(0xFF333333),
      textDisplay: Color(0xFFFFFFFF),
      textSecondary: Color(0xFF999999),
      textDisabled: Color(0xFF666666),
      accentSignal: Color(0xFFD71921),
      valueSuccess: Color(0xFF4A9E5C),
      valueWarning: Color(0xFFD4A843),
      dotGridColor: Color(0xFF333333),
      technicalRadius: 4,
      cardRadius: 16,
      pillRadius: 999,
    );
  }

  static NothingTokens light() {
    return const NothingTokens(
      surfaceRaised: Color(0xFFF0F0F0),
      borderSubtle: Color(0xFFE8E8E8),
      borderVisible: Color(0xFFCCCCCC),
      textDisplay: Color(0xFF000000),
      textSecondary: Color(0xFF666666),
      textDisabled: Color(0xFF999999),
      accentSignal: Color(0xFFD71921),
      valueSuccess: Color(0xFF4A9E5C),
      valueWarning: Color(0xFFD4A843),
      dotGridColor: Color(0xFFCCCCCC),
      technicalRadius: 4,
      cardRadius: 16,
      pillRadius: 999,
    );
  }
}

double? lerpDouble(num? a, num? b, double t) {
  if (a == null && b == null) return null;
  return (a ?? 0) + ((b ?? 0) - (a ?? 0)) * t;
}
