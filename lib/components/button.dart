import 'package:flame/components.dart';

class NumberButton extends SpriteComponent{
  NumberButton() :super(size: Vector2.all(16));
  @override
  Future<void> onLoad()async {
    sprite = await Sprite.load('1_grey.svg');
  }



}