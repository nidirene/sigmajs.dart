import 'dart:html';
import 'dart:math' as math;

import 'package:sigmajs/sigmajs.dart' as sigma;
import 'package:js/js.dart';
import 'package:js/js_util.dart' as js;


void main() {

  var graph = {
    "nodes": [
        sigma.Node(id: "n0", label: "A node", x: 0, y: 0, size: 1, color: '#666'),
        sigma.Node(id: "n1", label: "B node", x: 1, y: 1, size: 1, color: '#666'),
        sigma.Node(id: "n2", label: "C node", x: 1, y: 0, size: 1, color: '#666'),
        sigma.Node(id: "n3", label: "D node", x: 0, y: 1, size: 1, color: '#666')
    ],
    "edges": [
        sigma.Edge(id: "e0", source: "n0", target: "n1", color: '#666'),
        sigma.Edge(id: "e1", source: "n1", target: "n2", color: '#666'),
        sigma.Edge(id: "e2", source: "n2", target: "n0", color: '#666'),
        sigma.Edge(id: "e3", source: "n3", target: "n1", color: '#666')
    ]
  };

  var el = document.querySelector('#graph-container');

  var conf = new sigma.SigmaConfiguration(container: el);
  var sig = new sigma.Sigma(conf);

  for(var i in graph['nodes']) {
    sig.graph.addNode(i);
  }

  for(var i in graph['edges']) {
    sig.graph.addEdge(i);
  }

  sig.refresh(true);

}
