// Copyright (c) 2019, Acelaworks FZE. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
@JS()
library sigmajs;

import 'dart:html'
    show CanvasRenderingContext2D, CanvasElement, Event, MouseEvent;
import 'package:js/js.dart';

import 'src/func.dart';

@JS('sigma.renderers.def')
external dynamic get renderersDef;

@JS('sigma.renderers')
abstract class Renderers {
  external factory Renderers(dynamic conf);
  external String get def;

}

@JS('sigma')
abstract class Sigma {
  external factory Sigma(dynamic conf);
  external Camera addCamera(String id);
  external Sigma killCamera(String camera);
  external Renderer addRenderer(Options options);
  external Sigma refresh(bool skipIndexation);
  external Sigma render();
  external Sigma renderCamera(Camera camera, bool force);
  external void kill();
  external void instances();

  external dynamic get graph;
  external List<Camera> get cameras;
  external List<Middleware> get middlewares;
  external List<dynamic> get renderers;
}


@JS()
@anonymous
abstract class SigmaConfiguration {
  external factory SigmaConfiguration({
    dynamic graph,
    List<dynamic> renderers,
    dynamic container,
    List<Middleware> middlewares});
  /// initlalize graph
  external set graph(Graph g);
  external Graph  get graph;
  /// Initialize renderers:
  external set renderers(List<dynamic> r);
  external List<dynamic> get renderers;
  external set container(dynamic c);
  external dynamic get container;
  /// Initialize middlewares
  external set middlewares(List<Middleware> m);
  external List<Middleware> get middlewares;

}

@JS()
abstract class Options {

}

@JS('sigma.classes.camera')
abstract class Camera {
  external factory Camera(
    String id,
    Graph graph,
    Configurable settings
  );

  external set id(String id);
  external String get id;

  external set graph(Graph g);
  external Graph  get graph;
  external set setting(Configurable v);
  external Configurable  get setting;

}

@JS()
abstract class Renderer {
  external factory Renderer();

  external dynamic get options;

}

@JS()
abstract class Middleware {

}

@JS('sigma.classes.graph')
abstract class Graph {
  external factory Graph(Configurable settings);

  external Graph addNode(Node node);
  external Graph addEdge(Edge node);
  external Graph dropNode(String id);
  external Graph dropEdge(String id);
  external void kill();
  external Graph clear();
  external Graph read(dynamic g);
  external List<Node> nodes();
  external dynamic degree(dynamic o, String which);
  external List<Edge> edges();
}

@JS()
@anonymous
abstract class Node {
  external factory Node({String id, String label, num x, num y, num size, String color});
  external set id(String);
  external String get id;
  external set label(String);
  external String get label;
  external set x(num v);
  external num get x;
  external set y(num v);
  external num get y;
  external set size(num v);
  external num get size;
  external set color(String v);
  external String get color;
}

@JS()
@anonymous
abstract class Edge {
  external factory Edge({String id, String source, String target, String color});
  external set id(String);
  external String get id;
  external set source(String);
  external String get source;
  external set target(String);
  external String get target;
  external set color(String v);
  external String get color;

}



@JS('sigma.settings')
external Configurable get settings;

@JS('sigma.version')
external String get version;


@JS('sigma.classes.configurable')
abstract class Configurable {
  external factory Configurable({ bool clone,
    bool immutable,
    bool verbose,
    String classPrefix,
    String defaultNodeType,
    String defaultEdgeType,
    String defaultLabelColor,
    String defaultEdgeColor,
    String defaultNodeColor,
    num defaultLabelSize,
    String edgeColor,
    num minArrowSize,
    String font,
    String fontStyle,
    String labelColor,
    String labelSize,
    num labelSizeRatio,
    num labelThreshold,
    num webglOversamplingRatio,
    num borderSize,
    String defaultNodeBorderColor,
    String hoverFont,
    bool singleHover,
    String labelHoverShadow,
    String labelHoverShadowColor,
    String nodeHoverColor,
    String defaultNodeHoverColor,
    String labelHoverBGColor,
    String defaultHoverLabelBGColor,
    String labelHoverColor,
    String defaultLabelHoverColor,
    String edgeHoverColor,
    num edgeHoverSizeRatio,
    String defaultEdgeHoverColor,
    bool edgeHoverExtremities,
    bool drawEdges,
    bool drawNodes,
    bool drawLabels,
    bool drawEdgeLabels,
    bool batchEdgesDrawing,
    bool hideEdgesOnMove,
    num canvasEdgesBatchSize,
    num webglEdgesBatchSize,
    String scalingMode,
    num sideMargin,
    num minEdgeSize,
    num maxEdgeSize,
    num minNodeSize,
    num maxNodeSize,
    bool touchEnabled,
    bool mouseEnabled,
    bool mouseWheelEnabled,
    bool doubleClickEnabled,
    bool eventsEnabled,
    double zoomingRatio,
    double doubleClickZoomingRatio,
    double zoomMin,
    double zoomMax,
    num mouseZoomDuration,
    num doubleClickZoomDuration,
    num mouseInertiaDuration,
    num mouseInertiaRatio,
    num touchInertiaDuration,
    num touchInertiaRatio,
    num doubleClickTimeout,
    num doubleTapTimeout,
    num dragTimeout,
    bool autoResize,
    bool autoRescale,
    bool enableCamera,
    bool enableHovering,
    bool enableEdgeHovering,
    num edgeHoverPrecision,
    bool rescaleIgnoreSize,
    bool skipErrors,
    double nodesPowRatio,
    double edgesPowRatio,
    num animationsTime});

  /// Indicates if the data have to be cloned in methods to add nodes or edges.
  external set clone(bool c);
  external bool get clone;

  /// Indicates if nodes "id" values and edges "id", "source" and "target" values must be set as immutable.
  external set immutable(bool i);
  external bool get immutable;

  /// Indicates if sigma can log its errors and warnings.
  external set verbose(bool v);
  external bool get verbose;

  /// RENDERERS SETTINGS:
  ///
  external set classPrefix(String prefix);
  external String get classPrefix;

  external set defaultNodeType(String d);
  external String get defaultNodeType;
  external set defaultEdgeType(String d);
  external String get defaultEdgeType;

  /// Default colors
  external set defaultLabelColor(String d);
  external String get defaultLabelColor;
  external set defaultEdgeColor(String d);
  external String get defaultEdgeColor;
  external set defaultNodeColor(String d);
  external String get defaultNodeColor;

  external set defaultLabelSize(num d);
  external num get defaultLabelSize;

  /// Indicates how to choose the edges color. Available values: "source", "target", "default"
  external set edgeColor(String c);
  external String get edgeColor;

  /// Defines the minimal edge's arrow display size.
  external set minArrowSize(num s);
  external num get minArrowSize;

  /// Defines font style used for the annotations
  external set font(String f);
  external String get font;
  external set fontStyle(String f);
  external String get fontStyle;

  /// Indicates how to choose the labels color. Available values: "node", "default"
  external set labelColor(String f);
  external String get labelColor;

  /// Indicates how to choose the labels size. Available values: "fixed", "proportional"
  external set labelSize(String f);
  external String get labelSize;
  /// The ratio between the font size of the label and the node size.
  external set labelSizeRatio(num r);
  external num get labelSizeRatio;

  /// The minimum size a node must have to see its label displayed.
  external set labelThreshold(num t);
  external num get labelThreshold;

  /// The oversampling factor used in WebGL renderer.
  external set webglOversamplingRatio(num t);
  external num get webglOversamplingRatio;

  /// The size of the border of hovered nodes.
  external set borderSize(num t);
  external num get borderSize;

  /// The default hovered node border's color.
  external set defaultNodeBorderColor(String f);
  external String get defaultNodeBorderColor;

  /// The hovered node's label font. If not specified, will heritate the "font" value.
  external set hoverFont(String f);
  external String get hoverFont;

  /// If true, then only one node can be hovered at a time.
  external set singleHover(bool h);
  external bool get singleHover;
  external set hoverFontStyle(String f);
  external String get hoverFontStyle;

  /// Indicates how to choose the hovered nodes shadow color. Available values: "node", "default"
  external set labelHoverShadow(String d);
  external String get labelHoverShadow;

  external set labelHoverShadowColor(String d);
  external String get labelHoverShadowColor;

  /// Indicates how to choose the hovered nodes color. Available values: "node", "default"
  external set nodeHoverColor(String d);
  external String get nodeHoverColor;

  external set defaultNodeHoverColor(String c);
  external String get defaultNodeHoverColor;

  /// Indicates how to choose the hovered nodes background color. Available values: "node", "default"
  external set labelHoverBGColor(String c);
  external String get labelHoverBGColor;
  external set defaultHoverLabelBGColor(String c);
  external String get defaultHoverLabelBGColor;

  /// Indicates how to choose the hovered labels color. Available values: "node", "default"
  external set labelHoverColor(String c);
  external String get labelHoverColor;
  external set defaultLabelHoverColor(String c);
  external String get defaultLabelHoverColor;

  /// Indicates how to choose the edges hover color. Available values: "edge", "default"
  external set edgeHoverColor(String c);
  external String get edgeHoverColor;

  /// The size multiplicator of hovered edges.
  external set edgeHoverSizeRatio(num r);
  external num get edgeHoverSizeRatio;

  external set defaultEdgeHoverColor(String c);
  external String get defaultEdgeHoverColor;

  /// Indicates if the edge extremities must be hovered when the edge is hovered.
  external set edgeHoverExtremities(bool h);
  external bool get edgeHoverExtremities;

  /// The different drawing modes:
  /// false: Layered not displayed.
  /// true: Layered displayed.
  external set drawEdges(bool d);
  external bool get drawEdges;
  external set drawNodes(bool d);
  external bool get drawNodes;
  external set drawLabels(bool d);
  external bool get drawLabels;
  external set drawEdgeLabels(bool d);
  external bool get drawEdgeLabels;

  /// Indicates if the edges must be drawn in several frames or in
  /// one frame, as the nodes and labels are drawn.
  external set batchEdgesDrawing(bool d);
  external bool get batchEdgesDrawing;

  /// Indicates if the edges must be hidden during dragging and animations.
  external set hideEdgesOnMove(bool d);
  external bool get hideEdgesOnMove;

  /// The different batch sizes, when elements are displayed in several frames.
  external set canvasEdgesBatchSize(num d);
  external num get canvasEdgesBatchSize;
  external set webglEdgesBatchSize(num d);
  external num get webglEdgesBatchSize;


  /// RESCALE SETTINGS

  /// Indicates of to scale the graph relatively to its container. Available values: "inside", "outside"
  external set scalingMode(String c);
  external String get scalingMode;

  /// The margin to keep around the graph.
  external set sideMargin(num d);
  external num get sideMargin;

  /// Determine the size of the smallest and the biggest node / edgeson the screen.
  external set minEdgeSize(num s);
  external num get minEdgeSize;
  external set maxEdgeSize(num s);
  external num get maxEdgeSize;
  external set minNodeSize(num s);
  external num get minNodeSize;
  external set maxNodeSize(num s);
  external num get maxNodeSize;


  /// CAPTORS SETTINGS

  external set touchEnabled(bool enable);
  external bool get touchEnabled;
  external set mouseEnabled(bool enable);
  external bool get mouseEnabled;
  external set mouseWheelEnabled(bool enable);
  external bool get mouseWheelEnabled;
  external set doubleClickEnabled(bool enable);
  external bool get doubleClickEnabled;

  /// Defines whether the custom events such as "clickNode" can be used.
  external set eventsEnabled(bool enable);
  external bool get eventsEnabled;

  /// Defines by how much multiplicating the zooming level when the user zooms with the mouse-wheel.
  external set zoomingRatio(double enable);
  external double get zoomingRatio;

  /// Defines by how much multiplicating the zooming level when the user zooms by double clicking.
  external set doubleClickZoomingRatio(double enable);
  external double get doubleClickZoomingRatio;

  /// The minimum zooming level.
  external set zoomMin(double z);
  external double get zoomMin;

  /// The maximum zooming level.
  external set zoomMax(double z);
  external double get zoomMax;

  /// The duration of animations following a mouse scrolling.
  external set mouseZoomDuration(num d);
  external num get mouseZoomDuration;

  /// The duration of animations following a mouse double click.
  external set doubleClickZoomDuration(num d);
  external num get doubleClickZoomDuration;

  /// The duration of animations following a mouse dropping.
  external set mouseInertiaDuration(num d);
  external num get mouseInertiaDuration;

  /// The inertia power (mouse captor).
  external set mouseInertiaRatio(num r);
  external num get mouseInertiaRatio;

  /// The duration of animations following a touch dropping.
  external set touchInertiaDuration(num d);
  external num get touchInertiaDuration;

  /// The inertia power (touch captor).
  external set touchInertiaRatio(num r);
  external num get touchInertiaRatio;

  /// The maximum time between two clicks to make it a double click.
  external set doubleClickTimeout(num t);
  external num get doubleClickTimeout;

  /// The maximum time between two taps to make it a double tap.
  external set doubleTapTimeout(num t);
  external num get doubleTapTimeout;

  /// The maximum time of dragging to trigger intertia.
  external set dragTimeout(num t);
  external num get dragTimeout;

  /// GLOBAL SETTINGS:
  ///
  /// Determines whether the instance has to refresh itself
  ///  automatically when a "resize" event is dispatched from the
  ///  window object.
  external set autoResize(bool t);
  external bool get autoResize;

  /// Determines whether the "rescale" middleware has to be called
  /// automatically for each camera on refresh.
  external set autoRescale(bool t);
  external bool get autoRescale;

  /// If set to false, the camera method "goTo" will basically do nothing.
  external set enableCamera(bool t);
  external bool get enableCamera;

  // If set to false, the nodes cannot be hovered.
  external set enableHovering(bool t);
  external bool get enableHovering;

  /// If set to true, the edges can be hovered.
  external set enableEdgeHovering(bool t);
  external bool get enableEdgeHovering;

  /// The size of the area around the edges to activate hovering.
  external set edgeHoverPrecision(num t);
  external num get edgeHoverPrecision;

  /// If set to true, the rescale middleware will ignore node sizes
  /// to determine the graphs boundings.
  external set rescaleIgnoreSize(bool t);
  external bool get rescaleIgnoreSize;

  /// Determines if the core has to try to catch errors on rendering.
  external set skipErrors(bool t);
  external bool get skipErrors;


  /// CAMERA SETTINGS

  /// The power degrees applied to the nodes/edges size relatively to
  //  the zooming level. Basically:
  //           > onScreenR = Math.pow(zoom, nodesPowRatio) * R
  //           > onScreenT = Math.pow(zoom, edgesPowRatio) * T
  external set nodesPowRatio(double t);
  external double get nodesPowRatio;
  external set edgesPowRatio(double t);
  external double get edgesPowRatio;


  /// ANIMATIONS SETTINGS

  /// The default animation time.
  external set animationsTime(num t);
  external num get animationsTime;
}
