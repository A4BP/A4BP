delegate
delegateBPMNVizExample: mSTON
	|mParser mModel mRTView mMetric msvgexp mStream|
	mParser := BPMN20Parser parseString: (mSTON at:'bpmn').
	mModel := mParser elements first.
	mRTView := RTView new.
	mMetric := BPMN20MetricCFCExample new.
	mMetric bpObj: mModel.
	mMetric executeViz: mRTView.
	msvgexp := RTSVGExporter new view:mRTView.
	mStream := String new writeStream .
	msvgexp exportOnStream: mStream.
	^ self buildRes: mStream contents ctype:ZnMimeType any.