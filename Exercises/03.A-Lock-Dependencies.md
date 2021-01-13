# Locking your dependencies

It is critical to lock your dependencies in your code base. This allows **Dependabot** to parse the currently installed versions, and check for known issues.
This also is a great code practice as it allows users to be able to build the code at the same point it was generated. This will allow for more consistent builds and less issues with versioning in the future.

## Exercise: Add package lock files

Depending on the language you choose, you will need to add a lock file to help.

---

### PIP Add the Pipfile.lock

- Create a branch called `Deps`
- Add the following file to your repository: `/dependencies/Pipfile.lock`:

<details>
<summary> Click here to copy the file</summary>

```json
{
    "_meta": {
        "hash": {
            "sha256": "248e90964ec6432847db5bf54d04b48bba8126e1379315369ea608cc5aa57743"
        },
        "pipfile-spec": 6,
        "requires": {
            "python_version": "3.5"
        },
        "sources": [
            {
                "name": "pypi",
                "url": "https://pypi.org/simple",
                "verify_ssl": true
            }
        ]
    },
    "default": {
        "django": {
            "hashes": [
                "sha256:558cb27930defd9a6042133258caf797b2d1dee233959f537e3dc475cb49bd7c",
                "sha256:cf5370a4d7765a9dd6d42a7b96b53c74f9446cd38209211304b210fe0404b861"
            ],
            "index": "pypi",
            "version": "==2.2.17"
        },
        "django-cors-middleware": {
            "hashes": [
                "sha256:5bbdea85e22909d596e26f6e0dbc174d5521429fa3943ae02a2c6c48e76c88c7",
                "sha256:856dbe4d7aae65844ccc68acb49c6da7dbf7cbacaf5bcf37019f4c0c60b3be84"
            ],
            "index": "pypi",
            "version": "==1.5.0"
        },
        "django-extensions": {
            "hashes": [
                "sha256:7cd002495ff0a0e5eb6cdd6be759600905b4e4079232ea27618fc46bdd853651",
                "sha256:c7f88625a53f631745d4f2bef9ec4dcb999ed59476393bdbbe99db8596778846"
            ],
            "index": "pypi",
            "version": "==3.1.0"
        },
        "djangorestframework": {
            "hashes": [
                "sha256:0209bafcb7b5010fdfec784034f059d512256424de2a0f084cb82b096d6dd6a7"
            ],
            "index": "pypi",
            "version": "==3.12.2"
        },
        "pyjwt": {
            "hashes": [
                "sha256:5c6eca3c2940464d106b99ba83b00c6add741c9becaec087fb7ccdefea71350e",
                "sha256:8d59a976fb773f3e6a39c85636357c4f0e242707394cadadd9814f5cbaa20e96"
            ],
            "index": "pypi",
            "version": "==1.7.1"
        },
        "pytz": {
            "hashes": [
                "sha256:3e6b7dd2d1e0a59084bcee14a17af60c5c562cdc16d828e8eba2e683d3a7e268",
                "sha256:5c55e189b682d420be27c6995ba6edce0c0a77dd67bfbe2ae6607134d5851ffd"
            ],
            "version": "==2020.4"
        },
        "six": {
            "hashes": [
                "sha256:30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259",
                "sha256:8b74bedcbbbaca38ff6d7491d76f2b06b3592611af620f8426e82dddb04a5ced"
            ],
            "index": "pypi",
            "version": "==1.15.0"
        },
        "sqlparse": {
            "hashes": [
                "sha256:017cde379adbd6a1f15a61873f43e8274179378e95ef3fede90b5aa64d304ed0",
                "sha256:0f91fd2e829c44362cbcfab3e9ae12e22badaa8a29ad5ff599f9ec109f0454e8"
            ],
            "markers": "python_version >= '3.5'",
            "version": "==0.4.1"
        }
    },
    "develop": {}
}
```

</details>

- Commit the code
- Open Pull request

---

### NPM Add the package-lock.json

- Create a branch called `Deps`
- Add the following file to your repository: `/dependencies/package-lock.json`:

<details><summary>Click here to copy the file</summary>

```json
{
  "name": "demo-action",
  "requires": true,
  "lockfileVersion": 1,
  "dependencies": {
    "JSV": {
      "version": "4.0.2",
      "resolved": "https://registry.npmjs.org/JSV/-/JSV-4.0.2.tgz",
      "integrity": "sha1-0Hf2glVx+CEy+d/67Vh7QCn+/1c="
    },
    "ansi-styles": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-1.0.0.tgz",
      "integrity": "sha1-yxAt8cVvUSPquLZ817mAJ6AnkXg="
    },
    "argparse": {
      "version": "1.0.10",
      "resolved": "https://registry.npmjs.org/argparse/-/argparse-1.0.10.tgz",
      "integrity": "sha512-o5Roy6tNG4SL/FOkCAN6RzjiakZS25RLYFrcMttJqbdd8BWrnA+fGz57iN5Pb06pvBGvl5gQ0B48dJlslXvoTg==",
      "requires": {
        "sprintf-js": "~1.0.2"
      }
    },
    "balanced-match": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.0.tgz",
      "integrity": "sha1-ibTRmasr7kneFk6gK4nORi1xt2c="
    },
    "brace-expansion": {
      "version": "1.1.11",
      "resolved": "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz",
      "integrity": "sha512-iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==",
      "requires": {
        "balanced-match": "^1.0.0",
        "concat-map": "0.0.1"
      }
    },
    "chalk": {
      "version": "0.4.0",
      "resolved": "https://registry.npmjs.org/chalk/-/chalk-0.4.0.tgz",
      "integrity": "sha1-UZmj3c0MHv4jvAjBsCewYXbgxk8=",
      "requires": {
        "ansi-styles": "~1.0.0",
        "has-color": "~0.1.0",
        "strip-ansi": "~0.1.0"
      }
    },
    "colors": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/colors/-/colors-1.4.0.tgz",
      "integrity": "sha512-a+UqTh4kgZg/SlGvfbzDHpgRu7AAQOmmqRHJnxhRZICKFUT91brVhNNt58CMWU9PsBbv3PDCZUHbVxuDiH2mtA=="
    },
    "commander": {
      "version": "6.2.1",
      "resolved": "https://registry.npmjs.org/commander/-/commander-6.2.1.tgz",
      "integrity": "sha512-U7VdrJFnJgo4xjrHpTzu0yrHPGImdsmD95ZlgYSEajAn2JKzDhDTPG9kBTefmObL2w/ngeZnilk+OV9CG3d7UA=="
    },
    "concat-map": {
      "version": "0.0.1",
      "resolved": "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz",
      "integrity": "sha1-2Klr13/Wjfd5OnMDajug1UBdR3s="
    },
    "deep-extend": {
      "version": "0.6.0",
      "resolved": "https://registry.npmjs.org/deep-extend/-/deep-extend-0.6.0.tgz",
      "integrity": "sha512-LOHxIOaPYdHlJRtCQfDIVZtfw/ufM8+rVj649RIHzcm/vGwQRXFt6OPqIFWsm2XEMrNIEtWR64sY1LEKD2vAOA=="
    },
    "entities": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/entities/-/entities-2.0.3.tgz",
      "integrity": "sha512-MyoZ0jgnLvB2X3Lg5HqpFmn1kybDiIfEQmKzTb5apr51Rb+T3KdmMiqa70T+bhGnyv7bQ6WMj2QMHpGMmlrUYQ=="
    },
    "esprima": {
      "version": "4.0.1",
      "resolved": "https://registry.npmjs.org/esprima/-/esprima-4.0.1.tgz",
      "integrity": "sha512-eGuFFw7Upda+g4p+QHvnW0RyTX/SVeJBDM/gCtMARO0cLuT2HcEKnTPvhjV6aGeqrCB/sbNop0Kszm0jsaWU4A=="
    },
    "fs.realpath": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz",
      "integrity": "sha1-FQStJSMVjKpA20onh8sBQRmU6k8="
    },
    "get-stdin": {
      "version": "8.0.0",
      "resolved": "https://registry.npmjs.org/get-stdin/-/get-stdin-8.0.0.tgz",
      "integrity": "sha512-sY22aA6xchAzprjyqmSEQv4UbAAzRN0L2dQB0NlN5acTTK9Don6nhoc3eAbUnpZiCANAMfd/+40kVdKfFygohg=="
    },
    "glob": {
      "version": "7.1.6",
      "resolved": "https://registry.npmjs.org/glob/-/glob-7.1.6.tgz",
      "integrity": "sha512-LwaxwyZ72Lk7vZINtNNrywX0ZuLyStrdDtabefZKAY5ZGJhVtgdznluResxNmPitE0SAO+O26sWTHeKSI2wMBA==",
      "requires": {
        "fs.realpath": "^1.0.0",
        "inflight": "^1.0.4",
        "inherits": "2",
        "minimatch": "^3.0.4",
        "once": "^1.3.0",
        "path-is-absolute": "^1.0.0"
      }
    },
    "has-color": {
      "version": "0.1.7",
      "resolved": "https://registry.npmjs.org/has-color/-/has-color-0.1.7.tgz",
      "integrity": "sha1-ZxRKUmDDT8PMpnfQQdr1L+e3iy8="
    },
    "ignore": {
      "version": "5.1.8",
      "resolved": "https://registry.npmjs.org/ignore/-/ignore-5.1.8.tgz",
      "integrity": "sha512-BMpfD7PpiETpBl/A6S498BaIJ6Y/ABT93ETbby2fP00v4EbvPBXWEoaR1UBPKs3iR53pJY7EtZk5KACI57i1Uw=="
    },
    "inflight": {
      "version": "1.0.6",
      "resolved": "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz",
      "integrity": "sha1-Sb1jMdfQLQwJvJEKEHW6gWW1bfk=",
      "requires": {
        "once": "^1.3.0",
        "wrappy": "1"
      }
    },
    "inherits": {
      "version": "2.0.4",
      "resolved": "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz",
      "integrity": "sha512-k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ=="
    },
    "ini": {
      "version": "1.3.8",
      "resolved": "https://registry.npmjs.org/ini/-/ini-1.3.8.tgz",
      "integrity": "sha512-JV/yugV2uzW5iMRSiZAyDtQd+nxtUnjeLt0acNdw98kKLrvuRVyB80tsREOE7yvGVgalhZ6RNXCmEHkUKBKxew=="
    },
    "js-yaml": {
      "version": "3.14.1",
      "resolved": "https://registry.npmjs.org/js-yaml/-/js-yaml-3.14.1.tgz",
      "integrity": "sha512-okMH7OXXJ7YrN9Ok3/SXrnu4iX9yOk+25nqX4imS2npuvTYDmo/QEZoqwZkYaIDk3jVvBOTOIEgEhaLOynBS9g==",
      "requires": {
        "argparse": "^1.0.7",
        "esprima": "^4.0.0"
      }
    },
    "jsonc-parser": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/jsonc-parser/-/jsonc-parser-3.0.0.tgz",
      "integrity": "sha512-fQzRfAbIBnR0IQvftw9FJveWiHp72Fg20giDrHz6TdfB12UH/uue0D3hm57UB5KgAVuniLMCaS8P1IMj9NR7cA=="
    },
    "jsonlint": {
      "version": "1.6.3",
      "resolved": "https://registry.npmjs.org/jsonlint/-/jsonlint-1.6.3.tgz",
      "integrity": "sha512-jMVTMzP+7gU/IyC6hvKyWpUU8tmTkK5b3BPNuMI9U8Sit+YAWLlZwB6Y6YrdCxfg2kNz05p3XY3Bmm4m26Nv3A==",
      "requires": {
        "JSV": "^4.0.x",
        "nomnom": "^1.5.x"
      }
    },
    "linkify-it": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/linkify-it/-/linkify-it-3.0.2.tgz",
      "integrity": "sha512-gDBO4aHNZS6coiZCKVhSNh43F9ioIL4JwRjLZPkoLIY4yZFwg264Y5lu2x6rb1Js42Gh6Yqm2f6L2AJcnkzinQ==",
      "requires": {
        "uc.micro": "^1.0.1"
      }
    },
    "lodash.differencewith": {
      "version": "4.5.0",
      "resolved": "https://registry.npmjs.org/lodash.differencewith/-/lodash.differencewith-4.5.0.tgz",
      "integrity": "sha1-uvr7yRi1UVTheRdqALsK76rIVLc="
    },
    "lodash.flatten": {
      "version": "4.4.0",
      "resolved": "https://registry.npmjs.org/lodash.flatten/-/lodash.flatten-4.4.0.tgz",
      "integrity": "sha1-8xwiIlqWMtK7+OSt2+8kCqdlph8="
    },
    "markdown-it": {
      "version": "12.0.2",
      "resolved": "https://registry.npmjs.org/markdown-it/-/markdown-it-12.0.2.tgz",
      "integrity": "sha512-4Lkvjbv2kK+moL9TbeV+6/NHx+1Q+R/NIdUlFlkqkkzUcTod4uiyTJRiBidKR9qXSdkNFkgv+AELY8KN9vSgVA==",
      "requires": {
        "argparse": "^2.0.1",
        "entities": "~2.0.0",
        "linkify-it": "^3.0.1",
        "mdurl": "^1.0.1",
        "uc.micro": "^1.0.5"
      },
      "dependencies": {
        "argparse": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/argparse/-/argparse-2.0.1.tgz",
          "integrity": "sha512-8+9WqebbFzpX9OR+Wa6O29asIogeRMzcGtAINdpMHHyAg10f05aSFVBbcEqGf/PXw1EjAZ+q2/bEBg3DvurK3Q=="
        }
      }
    },
    "markdownlint": {
      "version": "0.22.0",
      "resolved": "https://registry.npmjs.org/markdownlint/-/markdownlint-0.22.0.tgz",
      "integrity": "sha512-J4B+iMc12pOdp/wfYi03W2qfAfEyiZzq3qvQh/8vOMNU8vXYY6Jg440EY7dWTBCqROhb1i4nAn3BTByJ5kdx1w==",
      "requires": {
        "markdown-it": "12.0.2"
      }
    },
    "markdownlint-cli": {
      "version": "0.26.0",
      "resolved": "https://registry.npmjs.org/markdownlint-cli/-/markdownlint-cli-0.26.0.tgz",
      "integrity": "sha512-biLfeGNZG9nw0yJbtFBzRlew2/P5w7JSseKwolSox3zejs7dLpGvPgqbC+iqJnqqGWcWLtXaXh8bBEKWmfl10A==",
      "requires": {
        "commander": "~6.2.1",
        "deep-extend": "~0.6.0",
        "get-stdin": "~8.0.0",
        "glob": "~7.1.6",
        "ignore": "~5.1.8",
        "js-yaml": "~3.14.1",
        "jsonc-parser": "~3.0.0",
        "lodash.differencewith": "~4.5.0",
        "lodash.flatten": "~4.4.0",
        "markdownlint": "~0.22.0",
        "markdownlint-rule-helpers": "~0.13.0",
        "minimatch": "~3.0.4",
        "minimist": "~1.2.5",
        "rc": "~1.2.8"
      }
    },
    "markdownlint-rule-helpers": {
      "version": "0.13.0",
      "resolved": "https://registry.npmjs.org/markdownlint-rule-helpers/-/markdownlint-rule-helpers-0.13.0.tgz",
      "integrity": "sha512-rRY0itbcHG4e+ntz0bbY3AIceSJMKS0TafEMgEtKVHRZ54/JUSy6/4ypCL618RlJvYRej+xMLxX5nkJqIeTZaQ=="
    },
    "mdurl": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/mdurl/-/mdurl-1.0.1.tgz",
      "integrity": "sha1-/oWy7HWlkDfyrf7BAP1sYBdhFS4="
    },
    "minimatch": {
      "version": "3.0.4",
      "resolved": "https://registry.npmjs.org/minimatch/-/minimatch-3.0.4.tgz",
      "integrity": "sha512-yJHVQEhyqPLUTgt9B83PXu6W3rx4MvvHvSUvToogpwoGDOUQ+yDrR0HRot+yOCdCO7u4hX3pWft6kWBBcqh0UA==",
      "requires": {
        "brace-expansion": "^1.1.7"
      }
    },
    "minimist": {
      "version": "1.2.5",
      "resolved": "https://registry.npmjs.org/minimist/-/minimist-1.2.5.tgz",
      "integrity": "sha512-FM9nNUYrRBAELZQT3xeZQ7fmMOBg6nWNmJKTcgsJeaLstP/UODVpGsr5OhXhhXg6f+qtJ8uiZ+PUxkDWcgIXLw=="
    },
    "nomnom": {
      "version": "1.8.1",
      "resolved": "https://registry.npmjs.org/nomnom/-/nomnom-1.8.1.tgz",
      "integrity": "sha1-IVH3Ikcrp55Qp2/BJbuMjy5Nwqc=",
      "requires": {
        "chalk": "~0.4.0",
        "underscore": "~1.6.0"
      }
    },
    "once": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/once/-/once-1.4.0.tgz",
      "integrity": "sha1-WDsap3WWHUsROsF9nFC6753Xa9E=",
      "requires": {
        "wrappy": "1"
      }
    },
    "path-is-absolute": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz",
      "integrity": "sha1-F0uSaHNVNP+8es5r9TpanhtcX18="
    },
    "prettyjson": {
      "version": "1.2.1",
      "resolved": "https://registry.npmjs.org/prettyjson/-/prettyjson-1.2.1.tgz",
      "integrity": "sha1-/P+rQdGcq0365eV15kJGYZsS0ok=",
      "requires": {
        "colors": "^1.1.2",
        "minimist": "^1.2.0"
      }
    },
    "rc": {
      "version": "1.2.8",
      "resolved": "https://registry.npmjs.org/rc/-/rc-1.2.8.tgz",
      "integrity": "sha512-y3bGgqKj3QBdxLbLkomlohkvsA8gdAiUQlSBJnBhfn+BPxg4bc62d8TcBW15wavDfgexCgccckhcZvywyQYPOw==",
      "requires": {
        "deep-extend": "^0.6.0",
        "ini": "~1.3.0",
        "minimist": "^1.2.0",
        "strip-json-comments": "~2.0.1"
      }
    },
    "sprintf-js": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/sprintf-js/-/sprintf-js-1.0.3.tgz",
      "integrity": "sha1-BOaSb2YolTVPPdAVIDYzuFcpfiw="
    },
    "strip-ansi": {
      "version": "0.1.1",
      "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-0.1.1.tgz",
      "integrity": "sha1-OeipjQRNFQZgq+SmgIrPcLt7yZE="
    },
    "strip-json-comments": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-2.0.1.tgz",
      "integrity": "sha1-PFMZQukIwml8DsNEhYwobHygpgo="
    },
    "uc.micro": {
      "version": "1.0.6",
      "resolved": "https://registry.npmjs.org/uc.micro/-/uc.micro-1.0.6.tgz",
      "integrity": "sha512-8Y75pvTYkLJW2hWQHXxoqRgV7qb9B+9vFEtidML+7koHUFapnVJAZ6cKs+Qjz5Aw3aZWHMC6u0wJE3At+nSGwA=="
    },
    "underscore": {
      "version": "1.6.0",
      "resolved": "https://registry.npmjs.org/underscore/-/underscore-1.6.0.tgz",
      "integrity": "sha1-izixDKze9jM3uLJOT/htRa6lKag="
    },
    "wrappy": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz",
      "integrity": "sha1-tSQ9jz7BqjXxNkYFvA0QNuMKtp8="
    }
  }
}
```

</details>

- Commit the code
- Open Pull request

---

### RUBY Add the gemfile.lock

- Create a branch called `Deps`
- Add the following file to your repository: `/dependencies/gemfile.lock`

<details>
<summary>Click here to copy the file</summary>

```gem
GEM
  remote: https://rubygems.org/
  specs:
    activesupport (6.1.1)
      concurrent-ruby (~> 1.0, >= 1.0.2)
      i18n (>= 1.6, < 2)
      minitest (>= 5.1)
      tzinfo (~> 2.0)
      zeitwerk (~> 2.3)
    ast (2.4.1)
    concurrent-ruby (1.1.7)
    i18n (1.8.7)
      concurrent-ruby (~> 1.0)
    jaro_winkler (1.5.4)
    minitest (5.14.3)
    parallel (1.20.1)
    parser (3.0.0.0)
      ast (~> 2.4.1)
    rack (2.2.3)
    rainbow (3.0.0)
    rexml (3.2.4)
    rubocop (0.82.0)
      jaro_winkler (~> 1.5.1)
      parallel (~> 1.10)
      parser (>= 2.7.0.1)
      rainbow (>= 2.2.2, < 4.0)
      rexml
      ruby-progressbar (~> 1.7)
      unicode-display_width (>= 1.4.0, < 2.0)
    rubocop-github (0.16.0)
      rubocop (<= 0.82.0)
      rubocop-performance (~> 1.0)
      rubocop-rails (~> 2.0)
    rubocop-performance (1.7.1)
      rubocop (>= 0.82.0)
    rubocop-rails (2.6.0)
      activesupport (>= 4.2.0)
      rack (>= 1.1)
      rubocop (>= 0.82.0)
    rubocop-rspec (1.41.0)
      rubocop (>= 0.68.1)
    ruby-progressbar (1.11.0)
    tzinfo (2.0.4)
      concurrent-ruby (~> 1.0)
    unicode-display_width (1.7.0)
    zeitwerk (2.4.2)

PLATFORMS
  ruby

DEPENDENCIES
  rubocop (~> 0.82.0)
  rubocop-github (~> 0.16.0)
  rubocop-performance (~> 1.7.1)
  rubocop-rails (~> 2.5)
  rubocop-rspec (~> 1.41.0)

BUNDLED WITH
   2.1.4
```

</details>

- Commit the code
- Open Pull request
