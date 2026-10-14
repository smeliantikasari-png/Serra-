import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import '../services/camera_service.dart';

class CameraScreen extends StatefulWidget {
  final String productImage;
  const CameraScreen({super.key, required this.productImage});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  final CameraService _service = CameraService();
  bool _isReady = false;

  @override
  void initState() {
    super.initState();
    _initCam();
  }

  Future<void> _initCam() async {
    final cameras = await availableCameras();
    _controller = await _service.initCamera(cameras.first);
    if (mounted) setState(() => _isReady = true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isReady) return const Scaffold(body: Center(child: CircularProgressIndicator()));
    return Scaffold(
      body: Stack(
        children: [
          CameraPreview(_controller),
          Center(
            child: Opacity(
              opacity: 0.7,
              child: Image.network(widget.productImage, width: 250),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0, right: 0,
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () async {
                  final file = await _service.takePicture(_controller);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Foto kesimpen: ${file.path}"))
                    );
                  }
                },
                icon: Icon(Icons.camera),
                label: Text("FOTO DI RUANGAN"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
