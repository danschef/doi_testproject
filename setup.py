#!/usr/bin/env python

"""The setup script."""

from setuptools import setup, find_packages

with open('README.rst') as readme_file:
    readme = readme_file.read()

with open('HISTORY.rst') as history_file:
    history = history_file.read()

requirements = [ ]

setup_requirements = [ ]

test_requirements = [ ]

setup(
    author="Daniel Scheffler",
    author_email='daniel.scheffler@gfz-potsdam.de',
    python_requires='>=3.5',
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: GNU General Public License v3 or later (GPLv3+)',
        'Natural Language :: English',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.5',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: 3.7',
        'Programming Language :: Python :: 3.8',
    ],
    description="A Python project to test automatic DOI assignments using Zenodo.",
    entry_points={
        'console_scripts': [
            'doi_testproject=doi_testproject.cli:main',
        ],
    },
    install_requires=requirements,
    license="GPL-3.0-or-later",
    long_description=readme + '\n\n' + history,
    include_package_data=True,
    keywords='doi_testproject',
    name='doi_testproject',
    packages=find_packages(include=['doi_testproject', 'doi_testproject.*'],
                           exclude=['tests*']),
    setup_requires=setup_requirements,
    test_suite='tests',
    tests_require=test_requirements,
    url='https://github.com/danschef/doi_testproject',
    version='0.1.40',
    zip_safe=False,
)
