iamjameshunt/replace Github Action
==================================

This GitHub Action allows you to munge and modify values and
variables using the full power of Perl-compatible regular
expressions (PCRE).

To use it, add a step to your workflow:

```yaml
steps:
  - uses: actions/checkout@v2
  - name: Extract Version
    id:   version
    uses: iamjameshunt/replace@v1
    with:
      in: ${{ github.ref }}
      re: 's@^refs/tags/rc@@'

  # ... etc ...
```

After the second step, you can use `${{
steps.version.outputs.value }}` in future steps.
