# cluckcheck - a Chicken Scheme port of the QuickCheck unit test framework

# EXAMPLE

```
$ csi -ss example.scm
*** Failed!
(125)
+++ OK, passed 100 tests
+++ OK, passed 100 tests
```

See [example.scm](https://github.com/mcandre/cluckcheck/blob/master/example.scm) for more information.

# DOCUMENTATION

https://wiki.call-cc.org/eggref/4/cluckcheck

# INSTALL

```
$ chicken-install cluckcheck
```

Note: Linux users may need to use `sudo chicken-install cluckcheck`.

# REQUIREMENTS

* [Chicken Scheme](http://www.call-cc.org/)

## Optional

* [ruby](https://www.ruby-lang.org/) 2.3+
* [Cucumber](http://cukes.info/)
* [aspelllint](https://github.com/mcandre/aspelllint)
* [pargs](https://github.com/mcandre/pargs)
* [editorconfig-tools](https://www.npmjs.com/package/editorconfig-tools)

# DEVELOPMENT

## Testing

Ensure the example script works as expected:

```
$ bundle
$ cucumber
Feature: Run example tests

  Scenario: Running example tests            # features/run_example_tests.feature:3
    Given the program has finished           # features/step_definitions/steps.rb:1
    Then the output is correct for each test # features/step_definitions/steps.rb:5

1 scenario (1 passed)
2 steps (2 passed)
0m0.017s
```

Guard can automatically run testing when the code changes:

```
$ bundle
$ guard -G Guardfile-cucumber
...
```

## Spell Check

```
$ aspelllint
...
```
