import logging
from time import sleep


logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


def handle_line(line):
    logger.info(line)
    sleep(1)


def read_file(path, line_handler):
    with open(path, 'r') as fp:
        for line in fp:
            line_handler(line)


if __name__ == '__main__':
    while True:
        read_file('lines.txt', handle_line)
        logger.info('---')
        sleep(2)
