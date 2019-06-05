@JS()
@TestOn('browser')
library test.sigmajs;

import 'package:sigmajs/sigmajs.dart' as sigma;
import 'dart:html';
import 'dart:math' as math;

// These are soft-deprecated, but test are present to ensure 1:1.
import 'dart:js' show context, JsFunction, JsObject;

import 'package:js/js.dart';
import 'package:js/js_util.dart' as js;
import 'package:test/test.dart';


void main() {

  test('should call a sigmajs with graph settings ', () {

    var settings = new sigma.Configurable();
    var g = new sigma.Graph(settings);

    var s = new sigma.Sigma({'id': 'container', 'graph': g, 'settings': settings});

    var c1 = s.addCamera('c1');

    print("camera id = ${c1.id} graph= ${c1.graph}");

    List<sigma.Camera> cameras = s.cameras;
    print("Is cameras a list ${cameras is List}");

    print("version ${sigma.version} : ${cameras}");

    expect(1,1);
  });


  test('test using graph', () {

    var graph = {
      'nodes' : [
        sigma.Node(id: 'n1'),
        sigma.Node(id: 'n2'),
      ],
      'edges':[
        sigma.Edge(id: 'e1', source: 'n1', target: 'n2'),
        sigma.Edge(id: 'e2', source: 'n2', target: 'n1')
      ]
    };

    var settings = new sigma.Configurable();

    var g = new sigma.Graph(settings);

    g.addNode(graph['nodes'][0]);
    g.addNode(graph['nodes'][1]);
    g.addEdge(graph['edges'][0]);
    g.addEdge(graph['edges'][1]);

    var rn = g.nodes();
    print(rn);
    var re = g.edges();
    print(re[0].id);
    expect(1,1);
  });

}
