!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Git Basics

!SLIDE smbullets
# Git Commands

* `git` cli command
* sub commands for specific actions

!SLIDE smbullets
# Command Overview

* Start a working area (clone, init)
* Work on current changes (add, reset)
* Examine the history and state (status, log)
* Grow, mark and tweak the history (branch, checkout, commit, merge, rebase)
* Collaborate (fetch, pull, push)

~~~SECTION:handouts~~~

****

Example from Git CLI command:

<style type="text/css">
	table {
		font-size: 7.5pt;
	}

	thead {
		font-size: 8.5pt;
		background-color:#f6edc3;
	}

	tbody tr:nth-child(even) {
		background-color:#f0f0f0;
	}
</style>
<table>
	<thead>
		<tr><td colspan="2">start a working area (see also: git help tutorial)</td></tr>
	</thead>
	<tbody>
		<tr><td>clone</td><td>Clone a repository into a new directory</td></tr>
		<tr><td>init</td><td>Create an empty Git repository or reinitialize an existing one</td></tr>
	</tbody>
</table>
~~~PAGEBREAK~~~
<table>
	<thead>
		<tr><td colspan="2">work on the current change (see also: git help everyday)</td></tr>
	</thead>
	<tbody>
		<tr><td>add</td><td>Add file contents to the index</td></tr>
		<tr><td>mv</td><td>Move or rename a file, a directory, or a symlink</td></tr>
		<tr><td>reset</td><td>Reset current HEAD to the specified state</td></tr>
		<tr><td>rm</td><td>Remove files from the working tree and from the index</td></tr>
	</tbody>
</table>
<div>&nbsp;</div>
<table>
	<thead>
		<tr><td colspan="2">examine the history and state (see also: git help revisions)</td></tr>
	</thread>
	<tbody>
		<tr><td>bisect</td><td>Use binary search to find the commit that introduced a bug</td></tr>
		<tr><td>grep</td><td>Print lines matching a pattern</td></tr>
		<tr><td>log</td><td>Show commit logs</td></tr>
		<tr><td>show</td><td>Show various types of objects</td></tr>
		<tr><td>status</td><td>Show the working tree status</td></tr>
	</tbody>
</table> 
~~~PAGEBREAK~~~
<table>
	<thead>
		<tr><td colspan="2">grow, mark and tweak your common history</td></tr>
	</thead>
	<tbody>
		<tr><td>branch</td><td>List, create, or delete branches</td></tr>
		<tr><td>checkout</td><td>Switch branches or restore working tree files</td></tr>
		<tr><td>commit</td><td>Record changes to the repository</td></tr>
		<tr><td>diff</td><td>Show changes between commits, commit and working tree, etc</td></tr>
		<tr><td>merge</td><td>Join two or more development histories together</td></tr>
		<tr><td>rebase</td><td>Forward-port local commits to the updated upstream head</td></tr>
		<tr><td>tag</td><td>Create, list, delete or verify a tag object signed with GPG</td></tr>
	</tbody>
</table>
<div>&nbsp;</div>
<table>
	<thead>
		<tr><td colspan="2">collaborate (see also: git help workflows)</td></tr>
	</thead>
	<tbody>
		<tr><td>fetch</td><td>Download objects and refs from another repository</td></tr>
		<tr><td>pull</td><td>Fetch from and integrate with another repository or a local branch</td></tr>
		<tr><td>push</td><td>Update remote refs along with associated objects</td></tr>
	</tbody>
</table>

~~~ENDSECTION~~~
