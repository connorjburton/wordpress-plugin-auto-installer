function wp_plugins() {

	#!/bin/sh
	wget -q "http:///dist/plugins.txt"
	file="plugins.txt"

	while read p || [[ -n $p ]]; do
		zip="$p.zip"
		url="http://downloads.wordpress.org/plugin/$zip"
		echo "Fetching $p" && wget -q --show-progress $url && echo "Unzipping $q" && unzip -q -o $zip && rm -rf $zip
		echo "Installed $p"
		echo "------"
	done <$file

	rm $file
}
