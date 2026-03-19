# Resume

Job hunting in software sucks. Just about every application needs a tailored resume and a folder/file for each revision is less than ideal to say the least. This is my attempt to fix that problem. I made things quite a bit easier by using [RenderCV](https://github.com/rendercv/rendercv) which reduces a 15MB+ docx file for each resume down to <20kB plaintext with easy version management.
Now when I apply to a new position I can make a new branch, which may lead to a kraken of a commit tree but it's certainly better than `resume{000..999}`. With this I can also have it generate the pdf for me using github actions meaning I can get an updated resume anywhere with an internet connection.

## Github Actions

In order to make github generate a new pdf it needs to create a new release and I made sure that the tagging scheme would be easilly extensible.
It looks like the following:

```
pdf-[target]-v[revision].[fix]
```

for example, to release the latest coop resume that has had 2 quick fixes but the same overall content:

```
git tag pdf-coop-v1.2
```
