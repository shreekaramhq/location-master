import 'package:flutter/material.dart';

class DraggableBottomSheet extends StatefulWidget {
  final Widget Function(
    BuildContext context,
    ScrollController scrollController,
  ) builder;
  final double minChildSize;
  final double initialChildSize;
  final double maxChildSize;

  const DraggableBottomSheet({
    Key? key,
    required this.builder,
    this.maxChildSize = 0.7,
    this.initialChildSize = 0.4,
    this.minChildSize = 0.4,
  }) : super(key: key);

  @override
  State<DraggableBottomSheet> createState() => _DraggableBottomSheetState();
}

class _DraggableBottomSheetState extends State<DraggableBottomSheet>
    with SingleTickerProviderStateMixin {
  final _controller = DraggableScrollableController();

  @override
  dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: _controller,
      minChildSize: widget.minChildSize,
      initialChildSize: widget.initialChildSize,
      maxChildSize: widget.maxChildSize,
      snap: true,
      expand: true,
      builder: _builder,
    );
  }

  Widget _builder(context, ScrollController scrollController) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius:
            const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(4, 0),
            blurRadius: 40,
            color: Colors.grey.withOpacity(0.4),
          ),
        ],
      ),
      child: Stack(
        children: [
          const Positioned(top: 0, right: 0, left: 0, child: Holder()),
          widget.builder(context, scrollController),
        ],
      ),
    );
  }
}

class Holder extends StatelessWidget {
  const Holder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 4,
        width: 80,
      ),
    );
  }
}
