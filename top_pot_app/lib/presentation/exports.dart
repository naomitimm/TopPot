// packages
export 'package:flutter/material.dart';
export 'package:top_pot_app/presentation/auth/widgets/waves.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:go_router/go_router.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

// pages

export 'package:top_pot_app/presentation/auth/login_page.dart';
export 'package:top_pot_app/presentation/auth/landing_page.dart';
export 'package:top_pot_app/presentation/auth/signup_page.dart';
export 'package:top_pot_app/presentation/dashboard/host_page.dart';
export 'package:top_pot_app/presentation/dashboard/cart_page.dart';
export 'package:top_pot_app/presentation/dashboard/home_page.dart';
export 'package:top_pot_app/presentation/dashboard/profile_page.dart';
export 'package:top_pot_app/presentation/dashboard/coffee_details_page.dart';

// widgets
export 'package:top_pot_app/presentation/auth/widgets/buttons.dart';
export 'package:top_pot_app/presentation/auth/widgets/texts.dart';
export 'package:top_pot_app/presentation/dashboard/widgets/buttons.dart';
export 'package:top_pot_app/presentation/dashboard/widgets/cards.dart';
export 'package:top_pot_app/presentation/dashboard/widgets/dash_text.dart';

//models
export 'package:top_pot_app/domain/models/coffee.dart';

// blocs
export 'package:top_pot_app/application/presentation/cart/cart_bloc.dart';
export 'package:top_pot_app/application/auth/signup/signup_bloc.dart';
export 'package:top_pot_app/application/navigation/navigation_cubit.dart';
export 'package:top_pot_app/application/auth/login/login_bloc.dart';
export 'package:top_pot_app/application/coffee_size/coffee_size_bloc.dart';

// repositories
export 'package:top_pot_app/infrustructure/auth_repository.dart';

// validators
export 'package:top_pot_app/domain/validators/user_form_validator.dart';
