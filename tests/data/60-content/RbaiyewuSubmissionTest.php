<?php

/**
 * @file tests/data/60-content/RbaiyewuSubmissionTest.php
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2000-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class RbaiyewuSubmissionTest
 * @ingroup tests_data
 *
 * @brief Data build suite: Create submission
 */

import('tests.data.ContentBaseTestCase');

class RbaiyewuSubmissionTest extends ContentBaseTestCase {
	/**
	 * Create a submission.
	 */
	function testSubmission() {
		$this->register(array(
			'username' => 'rbaiyewu',
			'firstName' => 'Rana',
			'lastName' => 'Baiyewu',
			'affiliation' => 'University of Nairobi',
			'country' => 'Kenya',
			'roles' => array('Author'),
		));

		$title = 'Yam diseases and its management in Nigeria';
		$this->createSubmission(array(
			'title' => $title,
			'abstract' => 'This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.',
		));

		$this->logOut();
		$this->findSubmissionAsEditor('dbarnes', null, $title);

		// Remove auto-assigned Stephanie Berardo, leaving David Buskins
		$this->clickAndWait('//td[contains(text(),\'Stephanie Berardo\')]/..//a[text()=\'Delete\']');

		// Go to review
		$this->clickAndWait('link=Review');
		$this->assignReviewer('phudson', 'Paul Hudson');
		$this->assignReviewer('amccrae', 'Aisla McCrae');
		$this->recordEditorialDecision('Accept Submission');

		$this->clickAndWait('link=Editing');
		$this->assignCopyeditor('Vogt, Sarah');
		$this->assignLayoutEditor('Hellier, Stephen');
		$this->logOut();
	}
}
