# docker-imageoptim

## Example usage:
```docker run --rm -v /folder/to/optimize:/images rpawel/imageoptim:xenial bash -x -c "find /images -size +1M -type f \( -iname \*.jpg -o -iname \*.png \) | parallel -j3 --gnu --no-notice optimize.sh {}"```
