import 'package:flutter/material.dart';

IconData getSpecialtyIcon(String specialtyName) {
  // Convert to lowercase so it matches no matter how the API sends it
  switch (specialtyName.toLowerCase()) {
    case 'cardiology':
      return Icons.monitor_heart; // Heart with ECG line
    case 'dermatology':
      return Icons.face_retouching_natural; // Face/Skin
    case 'neurology':
      return Icons.psychology; // Head with a brain
    case 'orthopedics':
      return Icons.personal_injury; // Represents bones/joints/injury
    case 'pediatrics':
      return Icons.child_care; // Baby/Child
    case 'gynecology':
      return Icons.pregnant_woman; // Women's health
    case 'ophthalmology':
      return Icons.visibility; // Eye
    case 'urology':
      return Icons.water_drop; // Represents fluids/urinary tract
    case 'gastroenterology':
      return Icons.restaurant; // Represents eating/digestion
    case 'psychiatry':
      return Icons.self_improvement; // Mental wellbeing / Meditation
    default:
      return Icons.medical_services_outlined; // Default medical cross if name doesn't match
  }
}