import 'package:budget_sales/app/core/shared/theme.dart';
import 'package:budget_sales/app/core/shared/validators/form_validators.dart';
import 'package:budget_sales/app/core/shared/widgets/degrade_area.dart';
import 'package:budget_sales/app/core/shared/widgets/logo_area.dart';
import 'package:budget_sales/app/modules/auth/presentation/bloc/auth_bloc.dart';
import 'package:budget_sales/app/modules/auth/presentation/bloc/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthPage extends StatefulWidget {
  /// Parâmetro opcional para injeção nos testes.
  /// Quando nulo, usa `Modular.get<AuthBloc>()`.
  final Bloc<AuthEvent, AuthState>? bloc;

  const AuthPage({super.key, this.bloc});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final Bloc<AuthEvent, AuthState> _bloc;

  final _form = GlobalKey<FormState>();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _bloc = widget.bloc ?? Modular.get<AuthBloc>();
  }

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: _bloc,
        child: Stack(
          children: [
            degradeArea(),
            Center(child: _buildForm(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return BlocConsumer<Bloc<AuthEvent, AuthState>, AuthState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state is AuthErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: Colors.red.shade700,
            ),
          );
        }
        if (state is AuthSessionExpiredState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                  'Sessão encerrada por inatividade. Faça login novamente.'),
              backgroundColor: Colors.orange,
            ),
          );
        }
        if (state is AuthSuccessState) {
          Modular.to.navigate('/budget/');
        }
      },
      builder: (context, state) {
        return Form(
          key: _form,
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  logoArea(),
                  const SizedBox(height: 20),
                  if (state is AuthLoadingState)
                    const CircularProgressIndicator()
                  else
                    const SizedBox(height: 20),
                  const SizedBox(height: 10),
                  _buildUserField(),
                  const SizedBox(height: 10),
                  _buildPasswordField(),
                  const SizedBox(height: 20),
                  _buildLoginButton(context),
                  const SizedBox(height: 16),
                  _buildServerConfigLink(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildUserField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Usuário', style: kLabelStyle),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: TextFormField(
            controller: _loginController,
            keyboardType: TextInputType.text,
            autofocus: false,
            textInputAction: TextInputAction.next,
            validator: (v) =>
                (v == null || v.trim().isEmpty) ? 'Informe o usuário' : null,
            style:
                const TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.person, color: Colors.white),
              hintText: 'Digite seu usuário',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Senha', style: kLabelStyle),
        const SizedBox(height: 10),
        Container(
          decoration: kBoxDecorationStyle,
          child: TextFormField(
            controller: _passwordController,
            obscureText: !_passwordVisible,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            validator: (v) => validatePassword(v, minLength: 1),
            style:
                const TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14),
              prefixIcon: const Icon(Icons.lock, color: Colors.white),
              hintText: 'Digite sua senha',
              hintStyle: kHintTextStyle,
              suffixIcon: IconButton(
                onPressed: () =>
                    setState(() => _passwordVisible = !_passwordVisible),
                icon: Icon(
                  _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(100, 60),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: () {
          if (_form.currentState?.validate() ?? false) {
            _bloc.add(AuthLoginEvent(
              login: _loginController.text.trim(),
              password: _passwordController.text,
            ));
          }
        },
        child: const Text(
          'ENTRAR',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildServerConfigLink() {
    return TextButton.icon(
      onPressed: () => Modular.to.pushNamed('/server-config/'),
      icon: const Icon(Icons.settings_ethernet,
          color: Colors.white70, size: 18),
      label: const Text(
        'Configurar servidor',
        style: TextStyle(color: Colors.white70, fontFamily: 'OpenSans'),
      ),
    );
  }
}
