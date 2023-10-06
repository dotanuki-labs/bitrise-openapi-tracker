#  Bitrise REST API tracker 🤖

## What

A companion automation to track changes on [Bitrise REST API](https://devcenter.bitrise.io/en/api/api-reference.html).

## How

Changes are tracked no top of [bump.sh](https://bump.sh/), one of the best tools in the market to create outstanding API docs from OpenAPI specs.

> Disclaimer : I'm not sponsored by this tool

`bump.sh` offers a nice feature where diffs between OpenAPI fiels are tracked in a changelog-like fashion. This is useful for ever-evolving API generated automatically by the underlying tooling where not necessarily we have updates properly versioned in the spec itself.

This automation will do a dailly check Bitrise OpenAPI reference and

- Deploy changes on `bump.sh`
- Update the spec itself in this repo

You can find changelogs related to Bitrise API
[here](https://bump.sh/ubiratansoares/doc/bitrise-openapi-tracker/changes). In addition, feel free to subscribe to the
[RSS feed](https://bump.sh/ubiratansoares/doc/bitrise-openapi-tracker/changes.rss) too 🙂.


## License

Copyright (c) 2023 - Dotanuki Labs -
[The MIT license](https://choosealicense.com/licenses/mit/)
