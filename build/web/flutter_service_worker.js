'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"manifest.json": "ea6e5b8c0f759d11cc36547643343395",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/assets/images/logo_sqlserver.svg": "9776b23e369cbf612b5bc608865ba358",
"assets/assets/images/logo_dart.svg": "ef26b12cc0b34cc83dfcde04e8bb1ea1",
"assets/assets/images/logo_spring_boot.svg": "edf462fec682b9d48cf628eaf9e19521",
"assets/assets/images/logo_c_c++.svg": "8cc47c68f0d71b364d6e3b793dbb6e55",
"assets/assets/images/logo_java.svg": "9b6c7cf43d21f9a7a3c7ddd377d23507",
"assets/assets/images/logo_mongodb.svg": "d6383fe18d0509ed57788e23092c7e6f",
"assets/assets/images/logo_pytorch.svg": "d98658a0dd3488d97e45ed3bce9d788b",
"assets/assets/images/logo_css.svg": "7415a70abb0fbaeab688508b2d8b1ce4",
"assets/assets/images/logo_android.svg": "70e62096b5d3a5feb620fd88cab983f6",
"assets/assets/images/logo_flutter.svg": "19ae8b60df6075e5c36b94495b5175fb",
"assets/assets/images/logo_colab.svg": "7dbe8b2ec7f340d8fa4305ab1142098a",
"assets/assets/images/logo_android_studio.svg": "58b597c6404d0b54e2173567797fe789",
"assets/assets/images/logo_intellij.svg": "345cf3094b01131abf0d6608092205fa",
"assets/assets/images/avatar.png": "800969a6b7bf6558356c7c381bfd7215",
"assets/assets/images/logo_javascript.png": "0cded3a3276425911d55a2552bf361bf",
"assets/assets/images/logo_kaggle.png": "b74db85f9c511be94dad2fd96c59a4f7",
"assets/assets/images/logo_git.svg": "f7287ff316e284af16ce082c870c478f",
"assets/assets/images/logo_dsa.png": "1389742b11316d39a3438ca39f3c7b22",
"assets/assets/images/logo_github.svg": "8dcc6b5262f3b6138b1566b357ba89a9",
"assets/assets/images/logo_mysql.png": "d76ff1872d0f758b4739fdd4d27d0cac",
"assets/assets/images/logo_docker.svg": "de17aa3d85bbf1f20f5757c90f237179",
"assets/assets/images/logo_postman.svg": "5785ba60cf8fc8fb94145fa6e561b3f5",
"assets/assets/images/logo_kotlin.svg": "831c24ead5cbf35b9767a141e722e087",
"assets/assets/images/logo_nodejs.svg": "c83cdc6e3e68fa61e5216a2df80d9fc9",
"assets/assets/images/logo_python.svg": "79ddc3d4363aebb071e76abf9f6850cb",
"assets/assets/images/logo_html.svg": "525f317fe9e90927edf7694d88ce42c8",
"assets/assets/images/logo_express.png": "e812bec137af36c10dfe4b944efa000b",
"assets/assets/images/logo_ubuntu.svg": "fda4860e8604d989f7c76c6d3710b47e",
"assets/assets/images/logo_visual_paradigm.png": "d0535fd6511b60718ab7737e42ea3ae5",
"assets/assets/images/logo_vscode.svg": "a80b6238ec4054a6de32d56f097ac656",
"assets/NOTICES": "123704f0b49d246176ab8aba5b27186c",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin": "0ebe83205d40d8c22db59affb662582e",
"assets/AssetManifest.bin.json": "b7e9e1e50b24e0c73d8fc59f6b3dccbc",
"assets/AssetManifest.json": "d9cd83b334676d65bdb20cf5edeb9317",
"assets/fonts/MaterialIcons-Regular.otf": "6098284bc70b83b4ac5681702efe75a7",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"main.dart.js": "996afff4d61243bf2ebb4747a43a0f4a",
"index.html": "9af2398c8c88891afb1c44fefd5aeae7",
"/": "9af2398c8c88891afb1c44fefd5aeae7",
"version.json": "db4aa783c30ed389dc4ac367cfa16553",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
