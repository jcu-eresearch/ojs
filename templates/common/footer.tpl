{**
 * templates/common/footer.tpl
 *
 * Copyright (c) 2013-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site footer.
 *
 *}
{strip}
{if $pageFooter==''}
	{if $currentJournal && $currentJournal->getSetting('onlineIssn')}
		{assign var=issn value=$currentJournal->getSetting('onlineIssn')}
	{elseif $currentJournal && $currentJournal->getSetting('printIssn')}
		{assign var=issn value=$currentJournal->getSetting('printIssn')}
	{/if}
	{if $issn}
		{translate|assign:"issnText" key="journal.issn"}
		{assign var=pageFooter value="$issnText: $issn"}
	{/if}
{/if}
{include file="core:common/footer.tpl"}
{/strip}

<div id="footer" style="padding:1em 0;font-size:0.7em;">
   <p><a href="{url journal='index'}">See all JCU Journals</a>. Hosted by the <a href="https://eresearch.jcu.edu.au">JCU eResearch Centre</a>.</p>
   <p><a href="#container">Back to top</a></p>
</div>
