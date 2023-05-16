import 'package:flutter/material.dart';

class CustomLoading extends StatefulWidget {
  const CustomLoading(
      {Key? key,
      required this.builder,
      required this.separated,
      required this.axis, required this.shrinkWrap})
      : super(key: key);
  final Widget builder;
  final Widget separated;
  final Axis axis;
  final bool shrinkWrap;

  @override
  State<CustomLoading> createState() => _CustomLoadingState();
}

class _CustomLoadingState extends State<CustomLoading> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
    );
    _animation = Tween<double>(begin: .2, end: .8).animate(_animationController);
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.repeat(reverse: true, period: const Duration(milliseconds: 800));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: widget.shrinkWrap,
      physics: const BouncingScrollPhysics(),
      scrollDirection: widget.axis,
      itemBuilder: (context, index) => Opacity(
        opacity: _animation.value,
        child: widget.builder,
      ),
      separatorBuilder: (context, index) => widget.separated,
      itemCount: 5,
    );
  }
}
