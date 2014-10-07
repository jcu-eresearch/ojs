{**
 * templates/common/footer.tpl
 *
 * Copyright (c) 2013-2014 Simon Fraser University Library
 * Copyright (c) 2000-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site footer.
 *
 *}
{if $displayCreativeCommons}
	{translate key="common.ccLicense"}
{/if}
{call_hook name="Templates::Common::Footer::PageFooter"}
</div><!-- content -->
</div><!-- main -->
</div><!-- body -->

{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}

</div><!-- container -->
<div id="footer" style="padding:1em 0;font-size:0.7em;">
{if $pageFooter}
   <p id="pageFooter">{$pageFooter}</p>
{/if}
   <p><a href="{url journal='index'}">See all JCU Journals</a>. Hosted by the <a href="https://eresearch.jcu.edu.au">JCU eResearch Centre</a>.</p>
   <p><a href="#container">Back to top</a></p>
</div>
</body>
</html>
