import 'package:brainwaivesocialapp/common/common.dart';
import 'package:brainwaivesocialapp/domain/domain.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/profile_state.dart';

class ProfileImageUpdater extends ConsumerWidget {
  const ProfileImageUpdater({
    super.key,
    required this.imageUrl,
    required this.userId,
    required this.type,
  });

  final ImageType type;
  final String imageUrl;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {},
      child: type == ImageType.avatar
          ? Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: CachedNetworkImageProvider(imageUrl),
                  backgroundColor: Colors.grey,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Delete Image'),
                            content: const Text(
                              'Are you sure you want to delete?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  AppRouter.pop(context);
                                },
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  ref.read(
                                    deleteImageStateProvider(
                                      DeleteImageMetadata(
                                        uid: userId,
                                        imageUrl: imageUrl,
                                        type: type,
                                      ),
                                    ),
                                  );
                                  AppRouter.pop(context);
                                },
                                child: const Text('Delete'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.delete_forever,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Center(
                    child: Icon(
                      Icons.camera,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            )
          : Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 200,
                  errorWidget: (context, url, error) => const SizedBox(
                    child: Center(
                      child: Text('Error Loading!'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    child: Icon(
                      Icons.camera,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
