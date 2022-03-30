'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/main.json": "71acb20aca11be5f851173dc2687a866",
"assets/assets/images/category_images/colored/recipe-management-colored.png": "365de2d9f3eb42c496a868df61a3b2d5",
"assets/assets/images/category_images/colored/analytics-colored.png": "b42f479d8d444ef42b9bd10eae2f0139",
"assets/assets/images/category_images/colored/ticketing-colored.png": "7794e9e655d852a92460fe479a133504",
"assets/assets/images/category_images/colored/software-development-continuous-integration-and-deployment-colored.png": "0dff5b5ee5e9e2fcb6d611ed8922a323",
"assets/assets/images/category_images/colored/content-management-systems-(cms)-colored.png": "0ab1a35f2f351909171fb39a7253cc24",
"assets/assets/images/category_images/colored/status%2520-or-uptime-pages-colored.png": "0627380eab71e0fa9337d80f8cde59e6",
"assets/assets/images/category_images/colored/e-commerce-colroed.png": "5b17977ebef99ffb062508ae686f53f5",
"assets/assets/images/category_images/colored/search-engines-colroed.png": "0fc2ca8ec9e1d712eaed1901c41c8b6a",
"assets/assets/images/category_images/colored/task-management-and-to-do-lists-colored.png": "4efd073320b18f626e102a5ec3a86783",
"assets/assets/images/category_images/colored/document-management-institutional-repository-and-digital-library-software-colored.png": "19a315bec17af066be1913e7254ef11a",
"assets/assets/images/category_images/colored/media-streaming-audio-streaming-colored.png": "80be6da8b6d7e58d7160f7aea1f1a2f2",
"assets/assets/images/category_images/colored/file-transfer-Peer-to-peer-filesharing-colored.png": "cf6e67bb0d40dca343151e1e051fbcc5",
"assets/assets/images/category_images/colored/communication-email-mail-delivery-agents-colored.png": "7fe65393b2f7becc310df37a43bb2cb1",
"assets/assets/images/category_images/colored/communication-email-mailing-lists-and-newsletters-colored.png": "a6a3826c19531d2fb7b567826c60a77d",
"assets/assets/images/category_images/colored/proxy-colored.png": "11e8f7f2ddc2a631152eb45fa04065d6",
"assets/assets/images/category_images/colored/note-taking-and-editors-colored.png": "92e3d275e15bb38d808cea00592dc252",
"assets/assets/images/category_images/colored/self-hosting-solutions-colroed.png": "fcd92137ab3fa68318829cba9d5d7c9d",
"assets/assets/images/category_images/colored/genealogy-colored.png": "64de67c3f64216687a2c5d9508b371a0",
"assets/assets/images/category_images/colored/automation-colored.png": "03c488ba2fddb51152b7ee412da11376",
"assets/assets/images/category_images/colored/bookmarks-and-link-sharing-colored.png": "4afeffb7dd260ad7cae1d2d822efded3",
"assets/assets/images/category_images/colored/software-development-project-management-colored.png": "6ed09a800c0bb37b17dfa0710a132a45",
"assets/assets/images/category_images/colored/software-development-ux-testing-colored.png": "6e1df76219f3e09f970be2bad5e27cc5",
"assets/assets/images/category_images/colored/dns-colored.png": "d3e6efc0deda6f5e1a9761c12e006725",
"assets/assets/images/category_images/colored/blogging-platforms-colored.png": "e4ea6a83443ba18559144401345fa167",
"assets/assets/images/category_images/colored/photo-and-video-galleries-colored.png": "7d6a3298d38a926d4c258f9d1e3e30b8",
"assets/assets/images/category_images/colored/document-management-colored.png": "ef6234468c7717516ac571873da30bd5",
"assets/assets/images/category_images/colored/gateways-and-terminal-sharing-colored.png": "d8bd9c1f552b4215a682768198ad199c",
"assets/assets/images/category_images/colored/resource-planning-colored.png": "47459e181bc42cce4922004634f3bbe0",
"assets/assets/images/category_images/colored/document-management-e-books-colored.png": "8010b66a9c49bb15bee31240fbbb1723",
"assets/assets/images/category_images/colored/communication-xmpp-servers-colored.png": "bbb6a4860a9ee3f1beb96eecfac8042a",
"assets/assets/images/category_images/colored/resource-planning-enterprise-resource-planning-colored.png": "317638a805f72eeccba2d65550c5834e",
"assets/assets/images/category_images/colored/communication-email-webmail-clients-colored.png": "d7cff68fa0d8266691913fae971a426e",
"assets/assets/images/category_images/colored/url-shorteners-colored.png": "cd315642a44c37dbcdf4f50764cd281a",
"assets/assets/images/category_images/colored/software-development-documentation-generators-colored.png": "88ef44328040c7d4db1f46fbd498df23",
"assets/assets/images/category_images/colored/polls-and-events-colored.png": "f534cb19e5ba631a87219b828071453f",
"assets/assets/images/category_images/colored/communication-social-networks-and-forums-colored.png": "db9856694209604003269ae3129040e7",
"assets/assets/images/category_images/colored/file-transfer-single-click-and-drag-n-drop-upload-colored.png": "251f62a33d07dcf11703181ea78a32ec",
"assets/assets/images/category_images/colored/password-managers-colroed.png": "fab9dabf28f0ff8c3ea21a2a7c45c22f",
"assets/assets/images/category_images/colored/human-resources-management-(HRM)-colored.png": "3ccc53dd4d422faa6f95bdf6fa7587f8",
"assets/assets/images/category_images/colored/web-servers-colored.png": "4434d843c0e200e5a5d8c59fa4e444de",
"assets/assets/images/category_images/colored/archiving-and-digital-preservation-(dp)-colored.png": "2c0506ebec0b4d998a518b1d44f604bb",
"assets/assets/images/category_images/colored/static-site-generators-colored.png": "8a220ad05b5d97eca2667cc10af8ba27",
"assets/assets/images/category_images/colored/games-colored.png": "d8781b85045f857d980dbb8eb6aba483",
"assets/assets/images/category_images/colored/document-management-integrated-library-systems-(ils)-colored.png": "d7f5a2149f3e57d2beebf6c57ed5b237",
"assets/assets/images/category_images/colored/groupware-colored.png": "a6fb66699c42ca09f8e18dc76fa4b514",
"assets/assets/images/category_images/colored/feed-readers-colored.png": "ac25c0d17c07c460756e914e89a59534",
"assets/assets/images/category_images/colored/communication-sip-colored.png": "b355750c564bd5119a8c9c763f908f98",
"assets/assets/images/category_images/colored/file-transfer-web-based-file-managers-colored.png": "7f7e468704a66dee32f2d155f44a8dfb",
"assets/assets/images/category_images/colored/monitoring-colored.png": "1c4cd7f75aca760b9fa839f9b4b36e15",
"assets/assets/images/category_images/colored/read-it-later-lists-colored.png": "1ab9bb3c2fdf008016b742485f87d9be",
"assets/assets/images/category_images/colored/media-streaming-multimedia-streaming-colored.png": "0d81f8cbac94de52c835316da6505f60",
"assets/assets/images/category_images/colored/federated-identity-and-authentication-colored.png": "e93e4a2f681acb745b059c7c9f2ef69f",
"assets/assets/images/category_images/colored/software-development-bug-trackers-colored.png": "b060028e702d3291130bf3f10f330232",
"assets/assets/images/category_images/colored/pastebins-colored.png": "cc286f10890abec7b0d0a110377e29af",
"assets/assets/images/category_images/colored/conference-management-colored.png": "a3e9a5990c152b26d5fa6f1ca44ea842",
"assets/assets/images/category_images/colored/miscellaneous-colored.png": "fed1240453bec313e909f333adf22031",
"assets/assets/images/category_images/colored/money,-budgeting-and-management-colored.png": "1c3c8c056e82fccdecf00599570c00bf",
"assets/assets/images/category_images/colored/personal-dashboards-colroed.png": "9c5cedb12b9c70b5ac89768bdc033e51",
"assets/assets/images/category_images/colored/learning-and-courses-colored.png": "1356b2a090611913b10b2934412bfb0d",
"assets/assets/images/category_images/colored/knowledge-management-tools-colored.png": "9cb7775194d0fa39c3f268d1de83caba",
"assets/assets/images/category_images/colored/communication-xmpp-web-clients-colored.png": "076cd6e1359e7edf683003e2f9444d85",
"assets/assets/images/category_images/colored/internet-of-things-(iot)-colored.png": "934153830fe450dc0344b03900f8906b",
"assets/assets/images/category_images/colored/booking-and-scheduling-colored.png": "dc2a600cbac84cd76011733e6b81c7a5",
"assets/assets/images/category_images/colored/community-supported-agriculture-(csa)-colored.png": "2179ebe1bd272378353cc94ee93a9961",
"assets/assets/images/category_images/colored/file-transfer-and-synchronization-colored.png": "40fcb66996fe2201dcef4b46fb61849b",
"assets/assets/images/category_images/colored/maps-and-global-positioning-system-(gps)-colroed.png": "6549fabd506fca70b21a230707f4a266",
"assets/assets/images/category_images/colored/media-streaming-video-streaming-colroed.png": "4caa11f91fb74f25844a1313e829ddb9",
"assets/assets/images/category_images/colored/office-suites-colored.png": "7b7f0f0233e58391775242576ea5935f",
"assets/assets/images/category_images/colored/communication-email-complete-solutions-colored.png": "a0361b81180b2b75474525a74078e438",
"assets/assets/images/category_images/colored/software-development-ide-and-tools-colroed.png": "e7b6bf3787e605afb0e21233b249c4dd",
"assets/assets/images/category_images/colored/vpn-colored.png": "c97acfea8418b8af7a885ef398e8caee",
"assets/assets/images/category_images/colored/software-development-faas-and-serverless-colored.png": "b4cfd80bea600c41cca901800576dd6c",
"assets/assets/images/category_images/colored/communication-custom-communication-systems-colored.png": "508647d0b2b3e7e2aff42392b59c3411",
"assets/assets/images/category_images/colored/calendar-and-contacts-colored.png": "1cdc441a76f6dc14b028f9e5623ea762",
"assets/assets/images/category_images/colored/file-transfer-distributed-filesystems-colored.png": "a5e4f4dcdd6938325abab3912fe5856e",
"assets/assets/images/category_images/colored/communication-email-mail-transfer-agents-colored.png": "89d3e881f57b2efa01c242dc55525614",
"assets/assets/images/category_images/colored/warning-colored.png": "fa659ce915c2e186b558969178e4c0f5",
"assets/assets/images/category_images/colored/file-transfer-object-storage-and-file-servers-colored.png": "d51d8b2ff28db324ed1be2766f793c43",
"assets/assets/images/category_images/colored/software-development-localization-colored.png": "94ba6747f3e26e170ca3fd79138e6712",
"assets/assets/images/category_images/colored/software-development-api-management-colored.png": "313f2fe5abf5269bf1278acfd227d58d",
"assets/assets/images/category_images/colored/wikis-colored.png": "8c527f5a2a398a7d2d696c7db6b89489",
"assets/assets/images/category_images/colored/communication-irc-colored.png": "ef37253d9d520e5be135b028c77cab1b",
"assets/assets/sample.json": "90468aadd2a0f66748bca60f5989181f",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/AssetManifest.json": "c77783205d635445e94196b9103873f3",
"assets/NOTICES": "1911f1fc37c722e68d6da9d755c67ac7",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"index.html": "57f3e17c74900e4cec313e44d2d132a0",
"/": "57f3e17c74900e4cec313e44d2d132a0",
"version.json": "eb845cd167077cf7bd718dfd1f14172b",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"main.dart.js": "38ca31c03aa29f9625ee81e8cf446522",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "9caa87a3f0e4f597c096ffe7022472b8",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
