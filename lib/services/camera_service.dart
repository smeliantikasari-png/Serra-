import 'package:camera/camera.dart';

class CameraService {
  Future<CameraController> initCamera(CameraDescription camera) async {
    final controller = CameraController(camera, ResolutionPreset.high);
    await controller.initialize();
    return controller;
  }

  Future<XFile> takePicture(CameraController controller) async {
    return await controller.takePicture();
  }
}
