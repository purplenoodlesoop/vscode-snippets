# Snippets description

This file is auto-generated

## Index

- [Dart](#dart)
	- [Base class](#base-class)
	- [Bloc event](#bloc-event)
	- [Bloc event handler](#bloc-event-handler)
	- [Bloc state](#bloc-state)
	- [Block separator](#block-separator)
	- [Class under interface](#class-under-interface)
	- [Conditional imports](#conditional-imports)
	- [Config mixin](#config-mixin)
	- [Config mixin entry](#config-mixin-entry)
	- [Config mixin spacing entry](#config-mixin-spacing-entry)
	- [Default bloc](#default-bloc)
	- [Generated part](#generated-part)
	- [Implementation](#implementation)
	- [Interface](#interface)
	- [New dartdoc template](#new-dartdoc-template)
	- [Retrofit client](#retrofit-client)
	- [Try catch finally](#try-catch-finally)
	- [Try catch on](#try-catch-on)
	- [Use dartdoc template](#use-dartdoc-template)
- [Flutter](#flutter)
	- [Arrow stateless widget](#arrow-stateless-widget)
	- [Arrow stateless widget child](#arrow-stateless-widget-child)
	- [Auto route nested routes](#auto-route-nested-routes)
	- [Auto route route](#auto-route-route)
	- [Auto router call](#auto-router-call)
	- [Inherited scope](#inherited-scope)
	- [Stateless bloc scope](#stateless-bloc-scope)
	- [Stateless widget](#stateless-widget)
- [Markdown](#markdown)
	- [Initial changelog entry](#initial-changelog-entry)
	- [New changelog entry](#new-changelog-entry)

## Dart

### Base class

Creates a base class.

#### Prefix

`base`

#### Body

```dart
class $1Base implements I$1 {
  $0
}
```

### Bloc event

Creates a Freezed bloc event.

#### Prefix

`blev`

#### Body

```dart
const factory $1Event.$2($3) = _$1Event$2;
$0
```

### Bloc event handler

Creates a BLoC event handler that is used with destructured events.

#### Prefix

`bleh`

#### Body

```dart
Stream<$1State> _$2($3) async* {
  $0
}
```

### Bloc state

Creates a Freezed bloc state.

#### Prefix

`blst`

#### Body

```dart
const factory $1State.$2($3) = $1State$2;
$0
```

### Block separator

Comment block separator

#### Prefix

`spr`

#### Body

```dart
// --- ${1} --- //

$0
```

### Class under interface

Creates and interface and a default implementation for it.

#### Prefix

`clsinter`

#### Body

```dart
abstract class I$1 {}

class $1 implements I$1 {
  $0
}
```

### Conditional imports

Platform-aware conditional imports.

#### Prefix

`cond`

#### Body

```dart
import '$1/$2_stub.dart'
    if (dart.library.html) '$1/$2_web.dart'
    if (dart.library.io) '$1/$2_io.dart';

```

### Config mixin

Private config mixin used for configuration.

#### Prefix

`cfg`

#### Body

```dart
mixin ${1:_Config} {
  static const $2 $3 = $4
  $0
}
```

### Config mixin entry

Creates a static constant config mixin entry.

#### Prefix

`cfge`

#### Body

```dart
static const $1 $2 = $3;
$0
```

### Config mixin spacing entry

Creates a static configuration spacing mixin entry.

#### Prefix

`cfgspace`

#### Body

```dart
static const double $1Spacing = $2;
$0
```

### Default bloc

Creates a scaffold for a StreamBloc that contains states, events, and the BLoC itself.

#### Prefix

`bloc`

#### Body

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_bloc/stream_bloc.dart';

part '$TM_FILENAME_BASE.freezed.dart';

// --- States --- //

@freezed
class $1State with _$$1State {
  $2
}

// --- Events --- //

@freezed
class $1Event with _$$1Event {
  $3
}

// --- BLoC --- //

class $1Bloc extends StreamBloc<$1Event, $1State> {
 $1Bloc() : super($4);

  @override
  Stream<$1State> mapEventToStates($1Event event) => event$0;
}
```

### Generated part

Inserts a part statement for generated code.

#### Prefix

`part`

#### Body

```dart
part '${TM_FILENAME_BASE}.$1.dart';

$0
```

### Implementation

Creates a default implementation for an interface.

#### Prefix

`imp`

#### Body

```dart
class $1 implements I$1 {
  $0
}
```

### Interface

Creates an interface.

#### Prefix

`inter`

#### Body

```dart
abstract class I$1 {}
```

### New dartdoc template

Creates a new dartdoc template with current file's name as its prefix

#### Prefix

`newtmpl`

#### Body

```dart
/// {@template $TM_FILENAME_BASE.${1}}
/// $2
/// {@endtemplate}
$0
```

### Retrofit client

Creates a retrofit client.

#### Prefix

`retro`

#### Body

```dart
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '$TM_FILENAME_BASE.g.dart';

@RestApi(baseUrl: "$1")
abstract class $2Client {
  factory $2Client(Dio dio, {String? baseUrl}) = _$2Client;

  $0
}
```

### Try catch finally

Try-catch-finally block

#### Prefix

`try`

#### Body

```dart
try {
  $1
} on Object catch (e, s) {
  $2
} finally {
  $0
}
```

### Try catch on

Try-catch on clause

#### Prefix

`tryon`

#### Body

```dart
on $1 catch (e, s) {
  $0
}
```

### Use dartdoc template

Uses existing dartdoc macro with current file's name as its prefix

#### Prefix

`usetmpl`

#### Body

```dart
/// {@macro $TM_FILENAME_BASE.$0}
```


## Flutter

### Arrow stateless widget

Creates a StatelessWidget that uses arrow instead of return.

#### Prefix

`astl`

#### Body

```dart
class $1 extends StatelessWidget {
  $2

  const $1({Key? key,$3}) : super(key: key);

  @override
  Widget build(BuildContext context) => $0;
}

```

### Arrow stateless widget child

Creates a StatelessWidget that takes a child and uses arrow instead of return.

#### Prefix

`astlch`

#### Body

```dart
class $1 extends StatelessWidget {
  final Widget child;
  $2

  const $1({Key? key, required this.child, $3}) : super(key: key);

  @override
  Widget build(BuildContext context) => $0;
}

```

### Auto route nested routes

Creates an entry point for a group of nested Auto Route routes with a void return types.

#### Prefix

`arts`

#### Body

```dart
const AutoRoute<void> $1Routes = AutoRoute(
  path: '/${1/([a-z]*)(([A-Z])+([a-z]+))?/${1:/downcase}${2:+-}${3:/downcase}${4:/downcase}/g}',
  page: ${1/(.)(.*)/${1:/upcase}${2:/camelcase}/}RootPage,
  children: <AutoRoute<void>>[
    $0
  ],
);
```

### Auto route route

Creates an Auto Routes route entry with a void return type.

#### Prefix

`art`

#### Body

```dart
AutoRoute(
  path: '/$1',
  page: $2Page,
),
$0
```

### Auto router call

Locates nearest AutoRouter in the given context and calls an arbitrary navigation method on it.

#### Prefix

`ar`

#### Body

```dart
AutoRouter.of(context).$0
```

### Inherited scope

Creates a scope that inherits from the Scope Stateful+Inherited Widget wrapper.

#### Prefix

`scope`

#### Body

```dart
class $1Scope extends Scope {

  const $1Scope({required Widget child, Key? key,}) : super(child: child, key: key);

  static const DelegateAccess<_$1ScopeDelegate> _delegateOf = Scope.delegateOf<$1Scope, _$1ScopeDelegate>;

  @override
  ScopeDelegate<$1Scope> createDelegate() => _$1ScopeDelegate();

}

class _$1ScopeDelegate extends ScopeDelegate<$1Scope> {

  $0

}
```

### Stateless bloc scope

Creates a stateless scope for BLoC that uses BlocProvider as its InheritedWidget.

#### Prefix

`blscope`

#### Body

```dart
class $1Scope extends StatelessWidget {
  final Widget child;

  const $1Scope({Key? key, required this.child,}) : super(key: key);

  static const BlocScope<$1Event, $1State, $1Bloc> _scope = BlocScope();

  @override
  Widget build(BuildContext context) => BlocProvider<$1Bloc>(
        create: (context) => $1Bloc(
          $2Repository: context.repository.$2,
        ),
        child: child,
      );
}
```

### Stateless widget

Creates a regular StatelessWidget.

#### Prefix

`stl`

#### Body

```dart
class $1 extends StatelessWidget {
  $2

  const $1({Key? key,$3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return $0;
  }
}

```


## Markdown

### Initial changelog entry

Creates an initial Changelog entry

#### Prefix

`chngin`

#### Body

```markdown
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] – $CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE
### Added
- $0
```

### New changelog entry

Creates a Changelog entry

#### Prefix

`chngen`

#### Body

```markdown
## [$1.$2.$3] – $CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE
### Added
- $4

### Changed
- $5

### Deprecated
- $6

### Removed
- $7

### Fixed
- $8

### Security
- $0
```



