package react.native.interactable;
import react.native.api.Animated.AnimatedValue;
import react.native.component.props.ViewProps;
import react.ReactComponent.ReactComponentOfProps;

@:jsRequire('react-native-interactable')
extern class Interactable {
	static inline var View = InteractableView;
}

@:jsRequire('react-native-interactable', 'View')
extern class InteractableView extends ReactComponentOfProps<InteractableViewProps> {
}

typedef InteractableViewProps = {
	> ViewProps,
	?snapPoints: Array<ISnapPoint>,
	?springPoints: Array<ISpringPoint>,
	?gravityPoints: Array<IGravityPoints>,
	?frictionAreas: Array<IFrictionArea>,
	?alertAreas: Array<IAlertArea>,
	?horizontalOnly: Bool,
	?verticalOnly: Bool,
	?boundaries: IBoundaries,
	?onSnap:ISnapEvent->Void,
	?onStop:IStopEvent->Void,
	?onDrag:IDragEvent->Void,
	?onAlert:IAlertEvent->Void,
	?dragEnabled: Bool,
	?dragWithSpring: IDragWithSpring,
	?dragToss: Float,
	?animatedValueX: AnimatedValue,
	?animatedValueY: AnimatedValue,
	?animatedNativeDriver: Bool,
	?initialPosition: IInitialPosition
}

typedef ISnapPoint = {
	?x: Float,
	?y: Float,
	?damping: Float,
	?tension: Float,
	?id: String,
}

typedef IInfluenceArea = {
	?left: Float,
	?right: Float,
	?top: Float,
	?bottom: Float,
}

typedef ISpringPoint = {
	?x: Float,
	?y: Float,
	?damping: Float,
	?tension: Float,
	?influenceArea: IInfluenceArea,
	?haptics: Bool,
}

typedef IGravityPoints = {
	?x: Float,
	?y: Float,
	?strength: Float,
	?falloff: Float,
	?damping: Float,
	?influenceArea: IInfluenceArea,
	?haptics: Bool,
}

typedef IFrictionArea = {
	?damping: Float,
	?influenceArea: IInfluenceArea,
	?haptics: Bool,
}

typedef IAlertArea = {
	id: String,
	influenceArea: IInfluenceArea,
}

typedef IBoundaries = {
	?left: Float,
	?right: Float,
	?top: Float,
	?bottom: Float,
	?bounce: Float,
	?haptics: Bool,
}

typedef IDragWithSpring = {
	?tension: Float,
	?damping: Float,
}

typedef IInitialPosition = {
	?x: Float,
	?y: Float,
}

typedef INativeSnapEvent = {
	index: Float,
	id: String,
}

typedef ISnapEvent = {
	nativeEvent: INativeSnapEvent,
}

typedef INativeStopEvent = {
	x: Float,
	y: Float,
}

typedef IStopEvent = {
	nativeEvent: INativeStopEvent,
}

@:enum abstract NativeDragEventState(String) {
	var NativeDragEventEndStateType = 'end';
	var NativeDragEventStartStateType = 'start';
}

typedef INativeDragEvent = {
	state: NativeDragEventState,
	x: Float,
	y: Float,
}

typedef IDragEvent = {
	nativeEvent: INativeDragEvent,
}

@:enum abstract NativeAlertEventValue(String) {
	var NativeAlertEventEnterValueType = 'enter';
	var NativeAlertEventLeaveValueType = 'leave';
}

typedef INativeAlertEvent = {
	id: String,
	value: NativeAlertEventValue,
}

typedef IAlertEvent = {
	nativeEvent: INativeAlertEvent,
}