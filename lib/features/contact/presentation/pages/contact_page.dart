import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/di.dart';
import '../../../../app/theme/color_tokens.dart';
import '../../../../app/theme/spacing.dart';
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/widgets/max_width.dart';
import '../../../../core/widgets/section_surface.dart';
import '../cubit/contact_cubit.dart';
import '../cubit/contact_state.dart';

@RoutePage()
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ContactCubit>(),
      child: const _ContactView(),
    );
  }
}

class _ContactView extends StatelessWidget {
  const _ContactView();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;
    final breakpoint = AppBreakpoint.of(context);
    final isDesktop = breakpoint.index >= AppBreakpoint.desktop.index;

    return BlocListener<ContactCubit, ContactState>(
      listenWhen: (prev, next) => prev.status != next.status,
      listener: (context, state) {
        switch (state.status) {
          case ContactSubmitStatus.success:
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Message sent')),
            );
          case ContactSubmitStatus.failure:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Failed to send')),
            );
          case ContactSubmitStatus.idle:
          case ContactSubmitStatus.submitting:
            break;
        }
      },
      child: Scaffold(
        backgroundColor: AppColorTokens.background,
        body: MaxWidth(
          padding: const EdgeInsets.all(AppSpacing.x6),
          child: ListView(
            children: <Widget>[
              Text('Contact', style: textTheme.displaySmall),
              const SizedBox(height: AppSpacing.x4),
              Text(
                'Send a message. (Firebase-ready: configure to enable Firestore submissions.)',
                style: textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: AppSpacing.x8),
              if (isDesktop)
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child: _ContactForm()),
                    SizedBox(width: AppSpacing.x6),
                    Expanded(child: _ContactAside()),
                  ],
                )
              else
                const Column(
                  children: <Widget>[
                    _ContactForm(),
                    SizedBox(height: AppSpacing.x4),
                    _ContactAside(),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContactForm extends StatefulWidget {
  const _ContactForm();

  @override
  State<_ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<_ContactForm> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _message = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SectionSurface(
      background: AppColorTokens.surfaceContainer,
      child: Column(
        children: <Widget>[
          TextField(
            controller: _name,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          const SizedBox(height: AppSpacing.x3),
          TextField(
            controller: _email,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: AppSpacing.x3),
          TextField(
            controller: _message,
            maxLines: 5,
            decoration: const InputDecoration(labelText: 'Message'),
          ),
          const SizedBox(height: AppSpacing.x4),
          Align(
            alignment: Alignment.centerRight,
            child: BlocSelector<ContactCubit, ContactState, bool>(
              selector: (state) => state.status == ContactSubmitStatus.submitting,
              builder: (context, isSubmitting) {
                return FilledButton(
                  onPressed: isSubmitting
                      ? null
                      : () => context.read<ContactCubit>().submit(
                            name: _name.text,
                            email: _email.text,
                            message: _message.text,
                          ),
                  child: isSubmitting
                      ? const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Send'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactAside extends StatelessWidget {
  const _ContactAside();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return SectionSurface(
      background: AppColorTokens.surfaceContainerHigh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Notes', style: textTheme.titleMedium),
          const SizedBox(height: AppSpacing.x3),
          Text(
            'This form is designed to submit to Firestore (contacts collection). '
            'Once configured, you’ll get durable storage + a simple admin workflow later.',
            style: textTheme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
          ),
          const SizedBox(height: AppSpacing.x6),
          Text('Design rules', style: textTheme.titleMedium),
          const SizedBox(height: AppSpacing.x3),
          const Wrap(
            spacing: AppSpacing.x2,
            runSpacing: AppSpacing.x2,
            children: <Widget>[
              Chip(label: Text('No-line')),
              Chip(label: Text('Tonal surfaces')),
              Chip(label: Text('Large type')),
            ],
          ),
        ],
      ),
    );
  }
}

