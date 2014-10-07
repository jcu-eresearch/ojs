{**
 * templates/user/login.tpl
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2003-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * User login form.
 * 
 * Customised to avoid needing to modify the core submodule; user/loginBase.tpl
 * is a copy of the file located in lib/pkp/templates/user/login.tpl.
 *}
{strip}
{assign var="helpTopicId" value="user.registerAndProfile"}
{assign var="registerOp" value="register"}
{assign var="registerLocaleKey" value="user.login.registerNewAccount"}
{include file="user/loginBase.tpl"}
{/strip}

