import 'package:budget_sales/app/modules/budget/domain/entity/customer_entity.dart';
import 'package:budget_sales/app/modules/budget/presentation/bloc/customer_search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// Searches customers and returns a [CustomerEntity] on selection.
class CustomerSearchDialog extends StatefulWidget {
  const CustomerSearchDialog({super.key, this.bloc});

  final CustomerSearchBloc? bloc;

  @override
  State<CustomerSearchDialog> createState() => _CustomerSearchDialogState();
}

class _CustomerSearchDialogState extends State<CustomerSearchDialog> {
  late CustomerSearchBloc _bloc;

  final _nameCtrl = TextEditingController();
  final _cnpjCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc = widget.bloc ?? Modular.get<CustomerSearchBloc>();
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _cnpjCtrl.dispose();
    super.dispose();
  }

  void _search() {
    _bloc.add(CustomerSearchLoad(
      name: _nameCtrl.text.trim().isEmpty ? null : _nameCtrl.text.trim(),
      cnpj: _cnpjCtrl.text.trim().isEmpty ? null : _cnpjCtrl.text.trim(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: AppBar(title: const Text('Pesquisa de Cliente')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  TextField(
                    controller: _nameCtrl,
                    decoration: const InputDecoration(
                      labelText: 'Nome / Razão Social',
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _search(),
                  ),
                  const SizedBox(height: 8),
                  Row(children: [
                    Expanded(
                      child: TextField(
                        controller: _cnpjCtrl,
                        decoration: const InputDecoration(
                          labelText: 'CNPJ / CPF',
                          isDense: true,
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        onSubmitted: (_) => _search(),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      onPressed: _search,
                      icon: const Icon(Icons.search),
                      label: const Text('Buscar'),
                    ),
                  ]),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: BlocBuilder<CustomerSearchBloc, CustomerSearchState>(
                builder: (context, state) {
                  if (state is CustomerSearchLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is CustomerSearchError) {
                    return Center(child: Text(state.message));
                  }
                  if (state is CustomerSearchLoaded) {
                    if (state.customers.isEmpty) {
                      return const Center(
                          child: Text('Nenhum cliente encontrado.'));
                    }
                    return ListView.separated(
                      itemCount: state.customers.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (ctx, i) {
                        final c = state.customers[i];
                        return ListTile(
                          title: Text(c.name,
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                          subtitle: Text(
                            c.cnpj.isNotEmpty ? c.cnpj : c.tradeName,
                            style: const TextStyle(fontSize: 12),
                          ),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () => Navigator.of(context).pop(c),
                        );
                      },
                    );
                  }
                  return const Center(
                      child: Text('Digite para pesquisar clientes.'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
