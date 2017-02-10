## PHP Coupling Detector - Detect all the coupling issues of your project with respect to the coupling rules you have defined
[![Docker Pulls](https://img.shields.io/docker/pulls/rvannauker/php-coupling-detector.svg)](https://hub.docker.com/r/rvannauker/php-coupling-detector/) [![Docker Stars](https://img.shields.io/docker/stars/rvannauker/php-coupling-detector.svg)](https://hub.docker.com/r/rvannauker/php-coupling-detector/) [![](https://images.microbadger.com/badges/image/rvannauker/php-coupling-detector:latest.svg)](https://microbadger.com/images/rvannauker/php-coupling-detector:latest) [![GitHub issues](https://img.shields.io/github/issues/RichVRed/docker-php-coupling-detector.svg)](https://github.com/RichVRed/docker-php-coupling-detector) [![license](https://img.shields.io/github/license/RichVRed/docker-php-coupling-detector.svg)](https://tldrlegal.com/license/mit-license)

Docker container to install and run php-coupling-detector

### Installation / Usage
1. Install the rvannauker/php-coupling-detector container:
```bash
docker pull rvannauker/php-coupling-detector
```
2. Run php-coupling-detector through the php-coupling-detector container:
```bash
sudo docker run --rm --volume $(pwd):/workspace --name="php-coupling-detector" "rvannauker/php-coupling-detector" detect {destination} --config-file=.php_cd --format=dot
```

### Download the source:
To run, test and develop the PHP-COUPLING-DETECTOR Dockerfile itself, you must use the source directly:
1. Download the source:
```bash
git clone https://github.com/RichVRed/docker-php-coupling-detector.git
```
2. Build the container:
```bash
sudo docker build --force-rm --tag "rvannauker/php-coupling-detector" --file php-coulping-detector.dockerfile .
```
3. Test running the container:
```bash
 $ docker run rvannauker/php-coupling-detector --help
```